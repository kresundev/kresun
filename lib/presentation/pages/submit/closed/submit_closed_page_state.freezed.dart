// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_closed_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubmitClosedPageState {

 String get customerName; String? get customerPhone; String? get customerBankName; SubmitStatus get submitStatus; String? get closedProofRejectedReason;
/// Create a copy of SubmitClosedPageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitClosedPageStateCopyWith<SubmitClosedPageState> get copyWith => _$SubmitClosedPageStateCopyWithImpl<SubmitClosedPageState>(this as SubmitClosedPageState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitClosedPageState&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.customerPhone, customerPhone) || other.customerPhone == customerPhone)&&(identical(other.customerBankName, customerBankName) || other.customerBankName == customerBankName)&&(identical(other.submitStatus, submitStatus) || other.submitStatus == submitStatus)&&(identical(other.closedProofRejectedReason, closedProofRejectedReason) || other.closedProofRejectedReason == closedProofRejectedReason));
}


@override
int get hashCode => Object.hash(runtimeType,customerName,customerPhone,customerBankName,submitStatus,closedProofRejectedReason);

@override
String toString() {
  return 'SubmitClosedPageState(customerName: $customerName, customerPhone: $customerPhone, customerBankName: $customerBankName, submitStatus: $submitStatus, closedProofRejectedReason: $closedProofRejectedReason)';
}


}

/// @nodoc
abstract mixin class $SubmitClosedPageStateCopyWith<$Res>  {
  factory $SubmitClosedPageStateCopyWith(SubmitClosedPageState value, $Res Function(SubmitClosedPageState) _then) = _$SubmitClosedPageStateCopyWithImpl;
@useResult
$Res call({
 String customerName, String? customerPhone, String? customerBankName, SubmitStatus submitStatus, String? closedProofRejectedReason
});




}
/// @nodoc
class _$SubmitClosedPageStateCopyWithImpl<$Res>
    implements $SubmitClosedPageStateCopyWith<$Res> {
  _$SubmitClosedPageStateCopyWithImpl(this._self, this._then);

  final SubmitClosedPageState _self;
  final $Res Function(SubmitClosedPageState) _then;

/// Create a copy of SubmitClosedPageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? customerName = null,Object? customerPhone = freezed,Object? customerBankName = freezed,Object? submitStatus = null,Object? closedProofRejectedReason = freezed,}) {
  return _then(_self.copyWith(
customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,customerPhone: freezed == customerPhone ? _self.customerPhone : customerPhone // ignore: cast_nullable_to_non_nullable
as String?,customerBankName: freezed == customerBankName ? _self.customerBankName : customerBankName // ignore: cast_nullable_to_non_nullable
as String?,submitStatus: null == submitStatus ? _self.submitStatus : submitStatus // ignore: cast_nullable_to_non_nullable
as SubmitStatus,closedProofRejectedReason: freezed == closedProofRejectedReason ? _self.closedProofRejectedReason : closedProofRejectedReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SubmitClosedPageState].
extension SubmitClosedPageStatePatterns on SubmitClosedPageState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubmitClosedPageState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmitClosedPageState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubmitClosedPageState value)  $default,){
final _that = this;
switch (_that) {
case _SubmitClosedPageState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubmitClosedPageState value)?  $default,){
final _that = this;
switch (_that) {
case _SubmitClosedPageState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String customerName,  String? customerPhone,  String? customerBankName,  SubmitStatus submitStatus,  String? closedProofRejectedReason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubmitClosedPageState() when $default != null:
return $default(_that.customerName,_that.customerPhone,_that.customerBankName,_that.submitStatus,_that.closedProofRejectedReason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String customerName,  String? customerPhone,  String? customerBankName,  SubmitStatus submitStatus,  String? closedProofRejectedReason)  $default,) {final _that = this;
switch (_that) {
case _SubmitClosedPageState():
return $default(_that.customerName,_that.customerPhone,_that.customerBankName,_that.submitStatus,_that.closedProofRejectedReason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String customerName,  String? customerPhone,  String? customerBankName,  SubmitStatus submitStatus,  String? closedProofRejectedReason)?  $default,) {final _that = this;
switch (_that) {
case _SubmitClosedPageState() when $default != null:
return $default(_that.customerName,_that.customerPhone,_that.customerBankName,_that.submitStatus,_that.closedProofRejectedReason);case _:
  return null;

}
}

}

/// @nodoc


class _SubmitClosedPageState implements SubmitClosedPageState {
  const _SubmitClosedPageState({this.customerName = '', this.customerPhone, this.customerBankName, this.submitStatus = SubmitStatus.closedProofPending, this.closedProofRejectedReason});
  

@override@JsonKey() final  String customerName;
@override final  String? customerPhone;
@override final  String? customerBankName;
@override@JsonKey() final  SubmitStatus submitStatus;
@override final  String? closedProofRejectedReason;

/// Create a copy of SubmitClosedPageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitClosedPageStateCopyWith<_SubmitClosedPageState> get copyWith => __$SubmitClosedPageStateCopyWithImpl<_SubmitClosedPageState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitClosedPageState&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.customerPhone, customerPhone) || other.customerPhone == customerPhone)&&(identical(other.customerBankName, customerBankName) || other.customerBankName == customerBankName)&&(identical(other.submitStatus, submitStatus) || other.submitStatus == submitStatus)&&(identical(other.closedProofRejectedReason, closedProofRejectedReason) || other.closedProofRejectedReason == closedProofRejectedReason));
}


@override
int get hashCode => Object.hash(runtimeType,customerName,customerPhone,customerBankName,submitStatus,closedProofRejectedReason);

@override
String toString() {
  return 'SubmitClosedPageState(customerName: $customerName, customerPhone: $customerPhone, customerBankName: $customerBankName, submitStatus: $submitStatus, closedProofRejectedReason: $closedProofRejectedReason)';
}


}

/// @nodoc
abstract mixin class _$SubmitClosedPageStateCopyWith<$Res> implements $SubmitClosedPageStateCopyWith<$Res> {
  factory _$SubmitClosedPageStateCopyWith(_SubmitClosedPageState value, $Res Function(_SubmitClosedPageState) _then) = __$SubmitClosedPageStateCopyWithImpl;
@override @useResult
$Res call({
 String customerName, String? customerPhone, String? customerBankName, SubmitStatus submitStatus, String? closedProofRejectedReason
});




}
/// @nodoc
class __$SubmitClosedPageStateCopyWithImpl<$Res>
    implements _$SubmitClosedPageStateCopyWith<$Res> {
  __$SubmitClosedPageStateCopyWithImpl(this._self, this._then);

  final _SubmitClosedPageState _self;
  final $Res Function(_SubmitClosedPageState) _then;

/// Create a copy of SubmitClosedPageState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? customerName = null,Object? customerPhone = freezed,Object? customerBankName = freezed,Object? submitStatus = null,Object? closedProofRejectedReason = freezed,}) {
  return _then(_SubmitClosedPageState(
customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,customerPhone: freezed == customerPhone ? _self.customerPhone : customerPhone // ignore: cast_nullable_to_non_nullable
as String?,customerBankName: freezed == customerBankName ? _self.customerBankName : customerBankName // ignore: cast_nullable_to_non_nullable
as String?,submitStatus: null == submitStatus ? _self.submitStatus : submitStatus // ignore: cast_nullable_to_non_nullable
as SubmitStatus,closedProofRejectedReason: freezed == closedProofRejectedReason ? _self.closedProofRejectedReason : closedProofRejectedReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
