// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_rejected_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubmitRejectedPageState {

 String get customerName; String? get customerPhone; String? get customerBankName; String? get rejectedReason;
/// Create a copy of SubmitRejectedPageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitRejectedPageStateCopyWith<SubmitRejectedPageState> get copyWith => _$SubmitRejectedPageStateCopyWithImpl<SubmitRejectedPageState>(this as SubmitRejectedPageState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitRejectedPageState&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.customerPhone, customerPhone) || other.customerPhone == customerPhone)&&(identical(other.customerBankName, customerBankName) || other.customerBankName == customerBankName)&&(identical(other.rejectedReason, rejectedReason) || other.rejectedReason == rejectedReason));
}


@override
int get hashCode => Object.hash(runtimeType,customerName,customerPhone,customerBankName,rejectedReason);

@override
String toString() {
  return 'SubmitRejectedPageState(customerName: $customerName, customerPhone: $customerPhone, customerBankName: $customerBankName, rejectedReason: $rejectedReason)';
}


}

/// @nodoc
abstract mixin class $SubmitRejectedPageStateCopyWith<$Res>  {
  factory $SubmitRejectedPageStateCopyWith(SubmitRejectedPageState value, $Res Function(SubmitRejectedPageState) _then) = _$SubmitRejectedPageStateCopyWithImpl;
@useResult
$Res call({
 String customerName, String? customerPhone, String? customerBankName, String? rejectedReason
});




}
/// @nodoc
class _$SubmitRejectedPageStateCopyWithImpl<$Res>
    implements $SubmitRejectedPageStateCopyWith<$Res> {
  _$SubmitRejectedPageStateCopyWithImpl(this._self, this._then);

  final SubmitRejectedPageState _self;
  final $Res Function(SubmitRejectedPageState) _then;

/// Create a copy of SubmitRejectedPageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? customerName = null,Object? customerPhone = freezed,Object? customerBankName = freezed,Object? rejectedReason = freezed,}) {
  return _then(_self.copyWith(
customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,customerPhone: freezed == customerPhone ? _self.customerPhone : customerPhone // ignore: cast_nullable_to_non_nullable
as String?,customerBankName: freezed == customerBankName ? _self.customerBankName : customerBankName // ignore: cast_nullable_to_non_nullable
as String?,rejectedReason: freezed == rejectedReason ? _self.rejectedReason : rejectedReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SubmitRejectedPageState].
extension SubmitRejectedPageStatePatterns on SubmitRejectedPageState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubmitRejectedPageState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmitRejectedPageState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubmitRejectedPageState value)  $default,){
final _that = this;
switch (_that) {
case _SubmitRejectedPageState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubmitRejectedPageState value)?  $default,){
final _that = this;
switch (_that) {
case _SubmitRejectedPageState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String customerName,  String? customerPhone,  String? customerBankName,  String? rejectedReason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubmitRejectedPageState() when $default != null:
return $default(_that.customerName,_that.customerPhone,_that.customerBankName,_that.rejectedReason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String customerName,  String? customerPhone,  String? customerBankName,  String? rejectedReason)  $default,) {final _that = this;
switch (_that) {
case _SubmitRejectedPageState():
return $default(_that.customerName,_that.customerPhone,_that.customerBankName,_that.rejectedReason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String customerName,  String? customerPhone,  String? customerBankName,  String? rejectedReason)?  $default,) {final _that = this;
switch (_that) {
case _SubmitRejectedPageState() when $default != null:
return $default(_that.customerName,_that.customerPhone,_that.customerBankName,_that.rejectedReason);case _:
  return null;

}
}

}

/// @nodoc


class _SubmitRejectedPageState implements SubmitRejectedPageState {
  const _SubmitRejectedPageState({this.customerName = '', this.customerPhone, this.customerBankName, this.rejectedReason});
  

@override@JsonKey() final  String customerName;
@override final  String? customerPhone;
@override final  String? customerBankName;
@override final  String? rejectedReason;

/// Create a copy of SubmitRejectedPageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitRejectedPageStateCopyWith<_SubmitRejectedPageState> get copyWith => __$SubmitRejectedPageStateCopyWithImpl<_SubmitRejectedPageState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitRejectedPageState&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.customerPhone, customerPhone) || other.customerPhone == customerPhone)&&(identical(other.customerBankName, customerBankName) || other.customerBankName == customerBankName)&&(identical(other.rejectedReason, rejectedReason) || other.rejectedReason == rejectedReason));
}


@override
int get hashCode => Object.hash(runtimeType,customerName,customerPhone,customerBankName,rejectedReason);

@override
String toString() {
  return 'SubmitRejectedPageState(customerName: $customerName, customerPhone: $customerPhone, customerBankName: $customerBankName, rejectedReason: $rejectedReason)';
}


}

/// @nodoc
abstract mixin class _$SubmitRejectedPageStateCopyWith<$Res> implements $SubmitRejectedPageStateCopyWith<$Res> {
  factory _$SubmitRejectedPageStateCopyWith(_SubmitRejectedPageState value, $Res Function(_SubmitRejectedPageState) _then) = __$SubmitRejectedPageStateCopyWithImpl;
@override @useResult
$Res call({
 String customerName, String? customerPhone, String? customerBankName, String? rejectedReason
});




}
/// @nodoc
class __$SubmitRejectedPageStateCopyWithImpl<$Res>
    implements _$SubmitRejectedPageStateCopyWith<$Res> {
  __$SubmitRejectedPageStateCopyWithImpl(this._self, this._then);

  final _SubmitRejectedPageState _self;
  final $Res Function(_SubmitRejectedPageState) _then;

/// Create a copy of SubmitRejectedPageState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? customerName = null,Object? customerPhone = freezed,Object? customerBankName = freezed,Object? rejectedReason = freezed,}) {
  return _then(_SubmitRejectedPageState(
customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,customerPhone: freezed == customerPhone ? _self.customerPhone : customerPhone // ignore: cast_nullable_to_non_nullable
as String?,customerBankName: freezed == customerBankName ? _self.customerBankName : customerBankName // ignore: cast_nullable_to_non_nullable
as String?,rejectedReason: freezed == rejectedReason ? _self.rejectedReason : rejectedReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
