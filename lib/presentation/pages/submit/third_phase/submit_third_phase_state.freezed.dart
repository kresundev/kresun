// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_third_phase_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubmitThirdPhaseState {

 String get customerName; String? get customerPhone; String? get customerBankName; bool? get approval; String get reviewInfo; bool get isReviewInfoDirty; SubmitStatus get submitStatus; bool get isSubmitting; String? get errorMessage;
/// Create a copy of SubmitThirdPhaseState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitThirdPhaseStateCopyWith<SubmitThirdPhaseState> get copyWith => _$SubmitThirdPhaseStateCopyWithImpl<SubmitThirdPhaseState>(this as SubmitThirdPhaseState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitThirdPhaseState&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.customerPhone, customerPhone) || other.customerPhone == customerPhone)&&(identical(other.customerBankName, customerBankName) || other.customerBankName == customerBankName)&&(identical(other.approval, approval) || other.approval == approval)&&(identical(other.reviewInfo, reviewInfo) || other.reviewInfo == reviewInfo)&&(identical(other.isReviewInfoDirty, isReviewInfoDirty) || other.isReviewInfoDirty == isReviewInfoDirty)&&(identical(other.submitStatus, submitStatus) || other.submitStatus == submitStatus)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,customerName,customerPhone,customerBankName,approval,reviewInfo,isReviewInfoDirty,submitStatus,isSubmitting,errorMessage);

@override
String toString() {
  return 'SubmitThirdPhaseState(customerName: $customerName, customerPhone: $customerPhone, customerBankName: $customerBankName, approval: $approval, reviewInfo: $reviewInfo, isReviewInfoDirty: $isReviewInfoDirty, submitStatus: $submitStatus, isSubmitting: $isSubmitting, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $SubmitThirdPhaseStateCopyWith<$Res>  {
  factory $SubmitThirdPhaseStateCopyWith(SubmitThirdPhaseState value, $Res Function(SubmitThirdPhaseState) _then) = _$SubmitThirdPhaseStateCopyWithImpl;
@useResult
$Res call({
 String customerName, String? customerPhone, String? customerBankName, bool? approval, String reviewInfo, bool isReviewInfoDirty, SubmitStatus submitStatus, bool isSubmitting, String? errorMessage
});




}
/// @nodoc
class _$SubmitThirdPhaseStateCopyWithImpl<$Res>
    implements $SubmitThirdPhaseStateCopyWith<$Res> {
  _$SubmitThirdPhaseStateCopyWithImpl(this._self, this._then);

  final SubmitThirdPhaseState _self;
  final $Res Function(SubmitThirdPhaseState) _then;

/// Create a copy of SubmitThirdPhaseState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? customerName = null,Object? customerPhone = freezed,Object? customerBankName = freezed,Object? approval = freezed,Object? reviewInfo = null,Object? isReviewInfoDirty = null,Object? submitStatus = null,Object? isSubmitting = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,customerPhone: freezed == customerPhone ? _self.customerPhone : customerPhone // ignore: cast_nullable_to_non_nullable
as String?,customerBankName: freezed == customerBankName ? _self.customerBankName : customerBankName // ignore: cast_nullable_to_non_nullable
as String?,approval: freezed == approval ? _self.approval : approval // ignore: cast_nullable_to_non_nullable
as bool?,reviewInfo: null == reviewInfo ? _self.reviewInfo : reviewInfo // ignore: cast_nullable_to_non_nullable
as String,isReviewInfoDirty: null == isReviewInfoDirty ? _self.isReviewInfoDirty : isReviewInfoDirty // ignore: cast_nullable_to_non_nullable
as bool,submitStatus: null == submitStatus ? _self.submitStatus : submitStatus // ignore: cast_nullable_to_non_nullable
as SubmitStatus,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SubmitThirdPhaseState].
extension SubmitThirdPhaseStatePatterns on SubmitThirdPhaseState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubmitThirdPhaseState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmitThirdPhaseState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubmitThirdPhaseState value)  $default,){
final _that = this;
switch (_that) {
case _SubmitThirdPhaseState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubmitThirdPhaseState value)?  $default,){
final _that = this;
switch (_that) {
case _SubmitThirdPhaseState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String customerName,  String? customerPhone,  String? customerBankName,  bool? approval,  String reviewInfo,  bool isReviewInfoDirty,  SubmitStatus submitStatus,  bool isSubmitting,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubmitThirdPhaseState() when $default != null:
return $default(_that.customerName,_that.customerPhone,_that.customerBankName,_that.approval,_that.reviewInfo,_that.isReviewInfoDirty,_that.submitStatus,_that.isSubmitting,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String customerName,  String? customerPhone,  String? customerBankName,  bool? approval,  String reviewInfo,  bool isReviewInfoDirty,  SubmitStatus submitStatus,  bool isSubmitting,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _SubmitThirdPhaseState():
return $default(_that.customerName,_that.customerPhone,_that.customerBankName,_that.approval,_that.reviewInfo,_that.isReviewInfoDirty,_that.submitStatus,_that.isSubmitting,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String customerName,  String? customerPhone,  String? customerBankName,  bool? approval,  String reviewInfo,  bool isReviewInfoDirty,  SubmitStatus submitStatus,  bool isSubmitting,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _SubmitThirdPhaseState() when $default != null:
return $default(_that.customerName,_that.customerPhone,_that.customerBankName,_that.approval,_that.reviewInfo,_that.isReviewInfoDirty,_that.submitStatus,_that.isSubmitting,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _SubmitThirdPhaseState extends SubmitThirdPhaseState {
  const _SubmitThirdPhaseState({this.customerName = '', this.customerPhone, this.customerBankName, this.approval, this.reviewInfo = '', this.isReviewInfoDirty = false, this.submitStatus = SubmitStatus.simulationUploaded, this.isSubmitting = false, this.errorMessage}): super._();
  

@override@JsonKey() final  String customerName;
@override final  String? customerPhone;
@override final  String? customerBankName;
@override final  bool? approval;
@override@JsonKey() final  String reviewInfo;
@override@JsonKey() final  bool isReviewInfoDirty;
@override@JsonKey() final  SubmitStatus submitStatus;
@override@JsonKey() final  bool isSubmitting;
@override final  String? errorMessage;

/// Create a copy of SubmitThirdPhaseState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitThirdPhaseStateCopyWith<_SubmitThirdPhaseState> get copyWith => __$SubmitThirdPhaseStateCopyWithImpl<_SubmitThirdPhaseState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitThirdPhaseState&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.customerPhone, customerPhone) || other.customerPhone == customerPhone)&&(identical(other.customerBankName, customerBankName) || other.customerBankName == customerBankName)&&(identical(other.approval, approval) || other.approval == approval)&&(identical(other.reviewInfo, reviewInfo) || other.reviewInfo == reviewInfo)&&(identical(other.isReviewInfoDirty, isReviewInfoDirty) || other.isReviewInfoDirty == isReviewInfoDirty)&&(identical(other.submitStatus, submitStatus) || other.submitStatus == submitStatus)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,customerName,customerPhone,customerBankName,approval,reviewInfo,isReviewInfoDirty,submitStatus,isSubmitting,errorMessage);

@override
String toString() {
  return 'SubmitThirdPhaseState(customerName: $customerName, customerPhone: $customerPhone, customerBankName: $customerBankName, approval: $approval, reviewInfo: $reviewInfo, isReviewInfoDirty: $isReviewInfoDirty, submitStatus: $submitStatus, isSubmitting: $isSubmitting, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$SubmitThirdPhaseStateCopyWith<$Res> implements $SubmitThirdPhaseStateCopyWith<$Res> {
  factory _$SubmitThirdPhaseStateCopyWith(_SubmitThirdPhaseState value, $Res Function(_SubmitThirdPhaseState) _then) = __$SubmitThirdPhaseStateCopyWithImpl;
@override @useResult
$Res call({
 String customerName, String? customerPhone, String? customerBankName, bool? approval, String reviewInfo, bool isReviewInfoDirty, SubmitStatus submitStatus, bool isSubmitting, String? errorMessage
});




}
/// @nodoc
class __$SubmitThirdPhaseStateCopyWithImpl<$Res>
    implements _$SubmitThirdPhaseStateCopyWith<$Res> {
  __$SubmitThirdPhaseStateCopyWithImpl(this._self, this._then);

  final _SubmitThirdPhaseState _self;
  final $Res Function(_SubmitThirdPhaseState) _then;

/// Create a copy of SubmitThirdPhaseState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? customerName = null,Object? customerPhone = freezed,Object? customerBankName = freezed,Object? approval = freezed,Object? reviewInfo = null,Object? isReviewInfoDirty = null,Object? submitStatus = null,Object? isSubmitting = null,Object? errorMessage = freezed,}) {
  return _then(_SubmitThirdPhaseState(
customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,customerPhone: freezed == customerPhone ? _self.customerPhone : customerPhone // ignore: cast_nullable_to_non_nullable
as String?,customerBankName: freezed == customerBankName ? _self.customerBankName : customerBankName // ignore: cast_nullable_to_non_nullable
as String?,approval: freezed == approval ? _self.approval : approval // ignore: cast_nullable_to_non_nullable
as bool?,reviewInfo: null == reviewInfo ? _self.reviewInfo : reviewInfo // ignore: cast_nullable_to_non_nullable
as String,isReviewInfoDirty: null == isReviewInfoDirty ? _self.isReviewInfoDirty : isReviewInfoDirty // ignore: cast_nullable_to_non_nullable
as bool,submitStatus: null == submitStatus ? _self.submitStatus : submitStatus // ignore: cast_nullable_to_non_nullable
as SubmitStatus,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
