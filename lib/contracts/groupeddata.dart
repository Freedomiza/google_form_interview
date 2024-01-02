import 'package:avnon_pre_interview/contracts/question.dart';
import 'package:avnon_pre_interview/contracts/user_form.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'groupeddata.freezed.dart';
part 'groupeddata.g.dart';

@freezed
class GroupedData with _$GroupedData {
  factory GroupedData({
    @Default([]) List<UserForm> userResponses,
    @Default([]) List<Question> questions,
  }) = _GroupedData;

  factory GroupedData.fromJson(Map<String, dynamic> json) =>
      _$GroupedDataFromJson(json);
}
