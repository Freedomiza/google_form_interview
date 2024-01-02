import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../constants/app_dimensions.dart';

class FABBottomAppBarItem {
  FABBottomAppBarItem({
    this.icon,
    this.title,
    this.activeIcon,
    this.disabled = false,
  });
  final Widget? icon;
  final Widget? activeIcon;
  final String? title;
  final bool disabled;
}

class FABBottomAppBar extends StatefulWidget {
  FABBottomAppBar({
    super.key,
    this.items,
    this.height = 60.0,
    this.iconSize = 24.0,
    this.backgroundColor,
    this.color,
    this.selectedColor,
    this.notchedShape,
    this.onTabSelected,
    this.index = 0,
  }) {
    assert(items!.length > 1);
  }
  final int index;
  final List<FABBottomAppBarItem>? items;
  final double height;
  final double iconSize;
  final Color? backgroundColor;
  final Color? color;
  final Color? selectedColor;
  final NotchedShape? notchedShape;
  final ValueChanged<int?>? onTabSelected;

  @override
  State<StatefulWidget> createState() => FABBottomAppBarState();
}

class FABBottomAppBarState extends State<FABBottomAppBar> {
  _updateIndex(int? index) {
    widget.onTabSelected!(index);
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: widget.notchedShape,
      notchMargin: 12,
      color: widget.backgroundColor,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List<Widget>.generate(
            widget.items!.length,
            (int index) => Expanded(
              child: _buildTabItem(
                item: widget.items![index],
                index: index,
                onPressed: _updateIndex,
              ),
            ),
          )),
    );
  }

  Widget _buildTabItem({
    required FABBottomAppBarItem item,
    int? index,
    ValueChanged<int?>? onPressed,
  }) {
    final isSelected = widget.index == index;
    Color? color = isSelected ? widget.selectedColor : widget.color;
    final currentIcon = isSelected ? item.activeIcon : item.icon;
    if (currentIcon == null) return const SizedBox.shrink();
    return SizedBox(
      height: widget.height,
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
              currentIcon,
              const Gap(16),
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
      ),
    );
  }
}
