import 'package:avnon_pre_interview/contracts/question_line.dart';
import 'package:avnon_pre_interview/providers/response_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ResponsesScreen extends ConsumerStatefulWidget {
  const ResponsesScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ResponsesScreenState();
}

class _ResponsesScreenState extends ConsumerState<ResponsesScreen> {
  @override
  Widget build(BuildContext context) {
    final usersData = ref.watch(responseFormListProvider);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) => Gap(1.sp),
              itemBuilder: (ctx, index) {
                final item = usersData.questions[index];
                return Container(
                  padding: EdgeInsets.all(8.sp),
                  child: Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Gap(16.sp),
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 8.sp),
                            child: Text(item.title)),
                        Gap(16.sp),
                        if (item.type == QuestionType.multiple)
                          ...List.generate(item.questions.length, (index) {
                            final questionLine = item.questions[index];
                            return ListTile(
                              title: Text(questionLine.question ?? ''),
                              trailing: Text("${questionLine.count}"),
                            );
                          })
                        else
                          Container(
                            padding: EdgeInsets.all(16.sp),
                            child: Text(item.longQuestion),
                          )
                      ],
                    ),
                  ),
                );
              },
              itemCount: usersData.questions.length,
            )
          ],
        ),
      ),
    );
  }
}
