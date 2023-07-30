import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String id,
    String? name,
    String? description,
    String? thumbnail,
    @Default(0) int follow,
    @Default(0) int follower,
    @Default(0) @JsonKey(name: 'follow_tag') int followTag,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
