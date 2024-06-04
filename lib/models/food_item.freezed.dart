// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FoodItemJson _$FoodItemJsonFromJson(Map<String, dynamic> json) {
  return _FoodItemJson.fromJson(json);
}

/// @nodoc
mixin _$FoodItemJson {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FoodItemJsonCopyWith<FoodItemJson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodItemJsonCopyWith<$Res> {
  factory $FoodItemJsonCopyWith(
          FoodItemJson value, $Res Function(FoodItemJson) then) =
      _$FoodItemJsonCopyWithImpl<$Res, FoodItemJson>;
  @useResult
  $Res call({String id, String name, String imageUrl});
}

/// @nodoc
class _$FoodItemJsonCopyWithImpl<$Res, $Val extends FoodItemJson>
    implements $FoodItemJsonCopyWith<$Res> {
  _$FoodItemJsonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FoodItemJsonImplCopyWith<$Res>
    implements $FoodItemJsonCopyWith<$Res> {
  factory _$$FoodItemJsonImplCopyWith(
          _$FoodItemJsonImpl value, $Res Function(_$FoodItemJsonImpl) then) =
      __$$FoodItemJsonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String imageUrl});
}

/// @nodoc
class __$$FoodItemJsonImplCopyWithImpl<$Res>
    extends _$FoodItemJsonCopyWithImpl<$Res, _$FoodItemJsonImpl>
    implements _$$FoodItemJsonImplCopyWith<$Res> {
  __$$FoodItemJsonImplCopyWithImpl(
      _$FoodItemJsonImpl _value, $Res Function(_$FoodItemJsonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = null,
  }) {
    return _then(_$FoodItemJsonImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FoodItemJsonImpl implements _FoodItemJson {
  const _$FoodItemJsonImpl(
      {required this.id, required this.name, required this.imageUrl});

  factory _$FoodItemJsonImpl.fromJson(Map<String, dynamic> json) =>
      _$$FoodItemJsonImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'FoodItemJson(id: $id, name: $name, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodItemJsonImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FoodItemJsonImplCopyWith<_$FoodItemJsonImpl> get copyWith =>
      __$$FoodItemJsonImplCopyWithImpl<_$FoodItemJsonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FoodItemJsonImplToJson(
      this,
    );
  }
}

abstract class _FoodItemJson implements FoodItemJson {
  const factory _FoodItemJson(
      {required final String id,
      required final String name,
      required final String imageUrl}) = _$FoodItemJsonImpl;

  factory _FoodItemJson.fromJson(Map<String, dynamic> json) =
      _$FoodItemJsonImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$FoodItemJsonImplCopyWith<_$FoodItemJsonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
