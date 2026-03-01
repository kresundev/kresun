// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'root_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RootPageState {

 RootStatus get status;
/// Create a copy of RootPageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RootPageStateCopyWith<RootPageState> get copyWith => _$RootPageStateCopyWithImpl<RootPageState>(this as RootPageState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RootPageState&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'RootPageState(status: $status)';
}


}

/// @nodoc
abstract mixin class $RootPageStateCopyWith<$Res>  {
  factory $RootPageStateCopyWith(RootPageState value, $Res Function(RootPageState) _then) = _$RootPageStateCopyWithImpl;
@useResult
$Res call({
 RootStatus status
});




}
/// @nodoc
class _$RootPageStateCopyWithImpl<$Res>
    implements $RootPageStateCopyWith<$Res> {
  _$RootPageStateCopyWithImpl(this._self, this._then);

  final RootPageState _self;
  final $Res Function(RootPageState) _then;

/// Create a copy of RootPageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as RootStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [RootPageState].
extension RootPageStatePatterns on RootPageState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RootPageState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RootPageState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RootPageState value)  $default,){
final _that = this;
switch (_that) {
case _RootPageState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RootPageState value)?  $default,){
final _that = this;
switch (_that) {
case _RootPageState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RootStatus status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RootPageState() when $default != null:
return $default(_that.status);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RootStatus status)  $default,) {final _that = this;
switch (_that) {
case _RootPageState():
return $default(_that.status);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RootStatus status)?  $default,) {final _that = this;
switch (_that) {
case _RootPageState() when $default != null:
return $default(_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _RootPageState implements RootPageState {
  const _RootPageState({required this.status});
  

@override final  RootStatus status;

/// Create a copy of RootPageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RootPageStateCopyWith<_RootPageState> get copyWith => __$RootPageStateCopyWithImpl<_RootPageState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RootPageState&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'RootPageState(status: $status)';
}


}

/// @nodoc
abstract mixin class _$RootPageStateCopyWith<$Res> implements $RootPageStateCopyWith<$Res> {
  factory _$RootPageStateCopyWith(_RootPageState value, $Res Function(_RootPageState) _then) = __$RootPageStateCopyWithImpl;
@override @useResult
$Res call({
 RootStatus status
});




}
/// @nodoc
class __$RootPageStateCopyWithImpl<$Res>
    implements _$RootPageStateCopyWith<$Res> {
  __$RootPageStateCopyWithImpl(this._self, this._then);

  final _RootPageState _self;
  final $Res Function(_RootPageState) _then;

/// Create a copy of RootPageState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,}) {
  return _then(_RootPageState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as RootStatus,
  ));
}


}

// dart format on
