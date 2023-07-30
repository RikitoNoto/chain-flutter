// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  int get follow => throw _privateConstructorUsedError;
  int get follower => throw _privateConstructorUsedError;
  @JsonKey(name: 'follow_tag')
  int get followTag => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String id,
      String? name,
      String? description,
      String? thumbnail,
      int follow,
      int follower,
      @JsonKey(name: 'follow_tag') int followTag});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? description = freezed,
    Object? thumbnail = freezed,
    Object? follow = null,
    Object? follower = null,
    Object? followTag = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      follow: null == follow
          ? _value.follow
          : follow // ignore: cast_nullable_to_non_nullable
              as int,
      follower: null == follower
          ? _value.follower
          : follower // ignore: cast_nullable_to_non_nullable
              as int,
      followTag: null == followTag
          ? _value.followTag
          : followTag // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? name,
      String? description,
      String? thumbnail,
      int follow,
      int follower,
      @JsonKey(name: 'follow_tag') int followTag});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? description = freezed,
    Object? thumbnail = freezed,
    Object? follow = null,
    Object? follower = null,
    Object? followTag = null,
  }) {
    return _then(_$_User(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      follow: null == follow
          ? _value.follow
          : follow // ignore: cast_nullable_to_non_nullable
              as int,
      follower: null == follower
          ? _value.follower
          : follower // ignore: cast_nullable_to_non_nullable
              as int,
      followTag: null == followTag
          ? _value.followTag
          : followTag // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  const _$_User(
      {required this.id,
      this.name,
      this.description,
      this.thumbnail,
      this.follow = 0,
      this.follower = 0,
      @JsonKey(name: 'follow_tag') this.followTag = 0});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final String id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? thumbnail;
  @override
  @JsonKey()
  final int follow;
  @override
  @JsonKey()
  final int follower;
  @override
  @JsonKey(name: 'follow_tag')
  final int followTag;

  @override
  String toString() {
    return 'User(id: $id, name: $name, description: $description, thumbnail: $thumbnail, follow: $follow, follower: $follower, followTag: $followTag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.follow, follow) || other.follow == follow) &&
            (identical(other.follower, follower) ||
                other.follower == follower) &&
            (identical(other.followTag, followTag) ||
                other.followTag == followTag));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, thumbnail,
      follow, follower, followTag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {required final String id,
      final String? name,
      final String? description,
      final String? thumbnail,
      final int follow,
      final int follower,
      @JsonKey(name: 'follow_tag') final int followTag}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get thumbnail;
  @override
  int get follow;
  @override
  int get follower;
  @override
  @JsonKey(name: 'follow_tag')
  int get followTag;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
