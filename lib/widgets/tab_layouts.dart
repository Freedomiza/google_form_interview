import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:avnon_pre_interview/constants/app_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../configs/injector.dart';
import '../events/app_event.dart';
import '../services/event_service.dart';
import 'fab_bottom_app_bar.dart';

class TabLayoutWithRoute extends StatefulWidget {
  final ValueChanged<int>? onDoubleTap;

  final ValueChanged<int>? onTabSelected;

  TabLayoutWithRoute({
    super.key,
    required this.screens,
    required this.items,
    this.swipeable = false,
    this.headerVisible = true,
    this.centerButton,
    this.bottomAppBarTextColor,
    this.bottomAppBarActiveTextColor,
    this.darkMode = false,
    this.onDoubleTap,
    this.onTabSelected,
    this.floatingActionButton,
    this.bottomAppBarColor,
    this.navigatorObservers =
        AutoRouterDelegate.defaultNavigatorObserversBuilder,
  }) {
    assert(items.length == screens.length);
  }

  final bool swipeable;
  final Color? bottomAppBarTextColor;
  final Color? bottomAppBarActiveTextColor;
  final Color? bottomAppBarColor;
  final bool headerVisible;
  final List<FABBottomAppBarItem> items;
  final List<PageRouteInfo<dynamic>> screens;
  final Widget? centerButton;
  final bool darkMode;
  final Widget? floatingActionButton;
  final List<NavigatorObserver> Function() navigatorObservers;

  @override
  _TabLayoutState createState() => _TabLayoutState();
}

class _TabLayoutState extends State<TabLayoutWithRoute>
    with SingleTickerProviderStateMixin {
  int prevIndex = 0;
  AppEventBus eventBus = getIt();

  ValueNotifier<Color?> appBarColorValue = ValueNotifier(null);
  StreamSubscription<TabEvent>? sub;

  late TabController controller;
  @override
  void initState() {
    super.initState();
    controller = TabController(
        initialIndex: 0, length: widget.items.length, vsync: this);
    sub = eventBus.on<TabEvent>().listen((event) {
      appBarColorValue.value = event.appBarColor;
    });

    controller.addListener(_onTabChanged);
  }

  @override
  void dispose() {
    sub?.cancel();
    controller.removeListener(_onTabChanged);
    controller.dispose();
    super.dispose();
  }

  void _onTabChanged() {
    final index = controller.index;

    print(index);
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
        routes: widget.screens,
        navigatorObservers: widget.navigatorObservers,
        builder: (context, child, controller) {
          final tabsRouter = AutoTabsRouter.of(context);

          return ValueListenableBuilder(
              valueListenable: appBarColorValue,
              builder: (_, value, __) {
                return Scaffold(
                  extendBody: true,
                  appBar: _buildNavigationBar(tabsRouter),
                  floatingActionButtonLocation:
                      FloatingActionButtonLocation.endFloat,
                  floatingActionButton: widget.floatingActionButton,
                  body: child,
                  // child: child,
                );
              });
        });
  }

  AppBar _buildNavigationBar(TabsRouter tabsRouter) {
    return AppBar(
      backgroundColor: widget.bottomAppBarColor,
      bottom: TabBar(
          controller: controller,
          automaticIndicatorColorAdjustment: true,
          tabs: widget.items
              .map((FABBottomAppBarItem e) => _buildTabItem(
                    item: e,
                    selectedIndex: tabsRouter.activeIndex,
                    index: widget.items.indexOf(e),
                  ))
              .toList(),
          onTap: (int index) {
            if (tabsRouter.activeIndex != index) {
              tabsRouter.setActiveIndex(index);
              widget.onTabSelected?.call(index);
            } else {
              widget.onDoubleTap?.call(index);
            }
          }),
    );
  }

  Widget _buildTabItem({
    required FABBottomAppBarItem item,
    required int selectedIndex,
    int? index,
    ValueChanged<int?>? onPressed,
  }) {
    final isSelected = selectedIndex == index;
    Color? color = isSelected
        ? widget.bottomAppBarActiveTextColor
        : widget.bottomAppBarTextColor;
    final currentIcon = isSelected ? item.activeIcon : item.icon;
    if (currentIcon == null) return const SizedBox.shrink();
    return Tab(
        icon: currentIcon,
        child: Material(
          type: MaterialType.transparency,
          child: InkWell(
            onTap: item.disabled || onPressed == null
                ? null
                : () => onPressed(index),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: AutoSizeText(
                    item.title ?? '',
                    style: TextStyle(color: color),
                    maxFontSize: AppDimensions.bodyXXSFontSize,
                    minFontSize: AppDimensions.bodyXXXSFontSize,
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    overflow: TextOverflow.visible,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
