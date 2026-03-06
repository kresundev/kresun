// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_fifth_phase_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubmitFifthPhasePageState {

 String get customerName; String? get customerPhone; String? get customerBankName;// Bukti Hasil Simulasi
 String? get closedProofUrl; String? get closedProofLocalPath; bool get isClosedProofPdf; bool get isClosedProofUploading;// Keterangan (opsional)
 String get closedProofInfo; SubmitStatus get submitStatus; bool get isSubmitting; String? get errorMessage;
/// Create a copy of SubmitFifthPhasePageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitFifthPhasePageStateCopyWith<SubmitFifthPhasePageState> get copyWith => _$SubmitFifthPhasePageStateCopyWithImpl<SubmitFifthPhasePageState>(this as SubmitFifthPhasePageState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitFifthPhasePageState&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.customerPhone, customerPhone) || other.customerPhone == customerPhone)&&(identical(other.customerBankName, customerBankName) || other.customerBankName == customerBankName)&&(identical(other.closedProofUrl, closedProofUrl) || other.closedProofUrl == closedProofUrl)&&(identical(other.closedProofLocalPath, closedProofLocalPath) || other.closedProofLocalPath == closedProofLocalPath)&&(identical(other.isClosedProofPdf, isClosedProofPdf) || other.isClosedProofPdf == isClosedProofPdf)&&(identical(other.isClosedProofUploading, isClosedProofUploading) || other.isClosedProofUploading == isClosedProofUploading)&&(identical(other.closedProofInfo, closedProofInfo) || other.closedProofInfo == closedProofInfo)&&(identical(other.submitStatus, submitStatus) || other.submitStatus == submitStatus)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,customerName,customerPhone,customerBankName,closedProofUrl,closedProofLocalPath,isClosedProofPdf,isClosedProofUploading,closedProofInfo,submitStatus,isSubmitting,errorMessage);

@override
String toString() {
  return 'SubmitFifthPhasePageState(customerName: $customerName, customerPhone: $customerPhone, customerBankName: $customerBankName, closedProofUrl: $closedProofUrl, closedProofLocalPath: $closedProofLocalPath, isClosedProofPdf: $isClosedProofPdf, isClosedProofUploading: $isClosedProofUploading, closedProofInfo: $closedProofInfo, submitStatus: $submitStatus, isSubmitting: $isSubmitting, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $SubmitFifthPhasePageStateCopyWith<$Res>  {
  factory $SubmitFifthPhasePageStateCopyWith(SubmitFifthPhasePageState value, $Res Function(SubmitFifthPhasePageState) _then) = _$SubmitFifthPhasePageStateCopyWithImpl;
@useResult
$Res call({
 String customerName, String? customerPhone, String? customerBankName, String? closedProofUrl, String? closedProofLocalPath, bool isClosedProofPdf, bool isClosedProofUploading, String closedProofInfo, SubmitStatus submitStatus, bool isSubmitting, String? errorMessage
});




}
/// @nodoc
class _$SubmitFifthPhasePageStateCopyWithImpl<$Res>
    implements $SubmitFifthPhasePageStateCopyWith<$Res> {
  _$SubmitFifthPhasePageStateCopyWithImpl(this._self, this._then);

  final SubmitFifthPhasePageState _self;
  final $Res Function(SubmitFifthPhasePageState) _then;

/// Create a copy of SubmitFifthPhasePageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? customerName = null,Object? customerPhone = freezed,Object? customerBankName = freezed,Object? closedProofUrl = freezed,Object? closedProofLocalPath = freezed,Object? isClosedProofPdf = null,Object? isClosedProofUploading = null,Object? closedProofInfo = null,Object? submitStatus = null,Object? isSubmitting = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,customerPhone: freezed == customerPhone ? _self.customerPhone : customerPhone // ignore: cast_nullable_to_non_nullable
as String?,customerBankName: freezed == customerBankName ? _self.customerBankName : customerBankName // ignore: cast_nullable_to_non_nullable
as String?,closedProofUrl: freezed == closedProofUrl ? _self.closedProofUrl : closedProofUrl // ignore: cast_nullable_to_non_nullable
as String?,closedProofLocalPath: freezed == closedProofLocalPath ? _self.closedProofLocalPath : closedProofLocalPath // ignore: cast_nullable_to_non_nullable
as String?,isClosedProofPdf: null == isClosedProofPdf ? _self.isClosedProofPdf : isClosedProofPdf // ignore: cast_nullable_to_non_nullable
as bool,isClosedProofUploading: null == isClosedProofUploading ? _self.isClosedProofUploading : isClosedProofUploading // ignore: cast_nullable_to_non_nullable
as bool,closedProofInfo: null == closedProofInfo ? _self.closedProofInfo : closedProofInfo // ignore: cast_nullable_to_non_nullable
as String,submitStatus: null == submitStatus ? _self.submitStatus : submitStatus // ignore: cast_nullable_to_non_nullable
as SubmitStatus,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SubmitFifthPhasePageState].
extension SubmitFifthPhasePageStatePatterns on SubmitFifthPhasePageState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubmitFifthPhasePageState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmitFifthPhasePageState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubmitFifthPhasePageState value)  $default,){
final _that = this;
switch (_that) {
case _SubmitFifthPhasePageState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubmitFifthPhasePageState value)?  $default,){
final _that = this;
switch (_that) {
case _SubmitFifthPhasePageState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String customerName,  String? customerPhone,  String? customerBankName,  String? closedProofUrl,  String? closedProofLocalPath,  bool isClosedProofPdf,  bool isClosedProofUploading,  String closedProofInfo,  SubmitStatus submitStatus,  bool isSubmitting,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubmitFifthPhasePageState() when $default != null:
return $default(_that.customerName,_that.customerPhone,_that.customerBankName,_that.closedProofUrl,_that.closedProofLocalPath,_that.isClosedProofPdf,_that.isClosedProofUploading,_that.closedProofInfo,_that.submitStatus,_that.isSubmitting,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String customerName,  String? customerPhone,  String? customerBankName,  String? closedProofUrl,  String? closedProofLocalPath,  bool isClosedProofPdf,  bool isClosedProofUploading,  String closedProofInfo,  SubmitStatus submitStatus,  bool isSubmitting,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _SubmitFifthPhasePageState():
return $default(_that.customerName,_that.customerPhone,_that.customerBankName,_that.closedProofUrl,_that.closedProofLocalPath,_that.isClosedProofPdf,_that.isClosedProofUploading,_that.closedProofInfo,_that.submitStatus,_that.isSubmitting,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String customerName,  String? customerPhone,  String? customerBankName,  String? closedProofUrl,  String? closedProofLocalPath,  bool isClosedProofPdf,  bool isClosedProofUploading,  String closedProofInfo,  SubmitStatus submitStatus,  bool isSubmitting,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _SubmitFifthPhasePageState() when $default != null:
return $default(_that.customerName,_that.customerPhone,_that.customerBankName,_that.closedProofUrl,_that.closedProofLocalPath,_that.isClosedProofPdf,_that.isClosedProofUploading,_that.closedProofInfo,_that.submitStatus,_that.isSubmitting,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _SubmitFifthPhasePageState extends SubmitFifthPhasePageState {
  const _SubmitFifthPhasePageState({this.customerName = '', this.customerPhone, this.customerBankName, this.closedProofUrl, this.closedProofLocalPath, this.isClosedProofPdf = false, this.isClosedProofUploading = false, this.closedProofInfo = '', this.submitStatus = SubmitStatus.submitted, this.isSubmitting = false, this.errorMessage}): super._();
  

@override@JsonKey() final  String customerName;
@override final  String? customerPhone;
@override final  String? customerBankName;
// Bukti Hasil Simulasi
@override final  String? closedProofUrl;
@override final  String? closedProofLocalPath;
@override@JsonKey() final  bool isClosedProofPdf;
@override@JsonKey() final  bool isClosedProofUploading;
// Keterangan (opsional)
@override@JsonKey() final  String closedProofInfo;
@override@JsonKey() final  SubmitStatus submitStatus;
@override@JsonKey() final  bool isSubmitting;
@override final  String? errorMessage;

/// Create a copy of SubmitFifthPhasePageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitFifthPhasePageStateCopyWith<_SubmitFifthPhasePageState> get copyWith => __$SubmitFifthPhasePageStateCopyWithImpl<_SubmitFifthPhasePageState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitFifthPhasePageState&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.customerPhone, customerPhone) || other.customerPhone == customerPhone)&&(identical(other.customerBankName, customerBankName) || other.customerBankName == customerBankName)&&(identical(other.closedProofUrl, closedProofUrl) || other.closedProofUrl == closedProofUrl)&&(identical(other.closedProofLocalPath, closedProofLocalPath) || other.closedProofLocalPath == closedProofLocalPath)&&(identical(other.isClosedProofPdf, isClosedProofPdf) || other.isClosedProofPdf == isClosedProofPdf)&&(identical(other.isClosedProofUploading, isClosedProofUploading) || other.isClosedProofUploading == isClosedProofUploading)&&(identical(other.closedProofInfo, closedProofInfo) || other.closedProofInfo == closedProofInfo)&&(identical(other.submitStatus, submitStatus) || other.submitStatus == submitStatus)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,customerName,customerPhone,customerBankName,closedProofUrl,closedProofLocalPath,isClosedProofPdf,isClosedProofUploading,closedProofInfo,submitStatus,isSubmitting,errorMessage);

@override
String toString() {
  return 'SubmitFifthPhasePageState(customerName: $customerName, customerPhone: $customerPhone, customerBankName: $customerBankName, closedProofUrl: $closedProofUrl, closedProofLocalPath: $closedProofLocalPath, isClosedProofPdf: $isClosedProofPdf, isClosedProofUploading: $isClosedProofUploading, closedProofInfo: $closedProofInfo, submitStatus: $submitStatus, isSubmitting: $isSubmitting, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$SubmitFifthPhasePageStateCopyWith<$Res> implements $SubmitFifthPhasePageStateCopyWith<$Res> {
  factory _$SubmitFifthPhasePageStateCopyWith(_SubmitFifthPhasePageState value, $Res Function(_SubmitFifthPhasePageState) _then) = __$SubmitFifthPhasePageStateCopyWithImpl;
@override @useResult
$Res call({
 String customerName, String? customerPhone, String? customerBankName, String? closedProofUrl, String? closedProofLocalPath, bool isClosedProofPdf, bool isClosedProofUploading, String closedProofInfo, SubmitStatus submitStatus, bool isSubmitting, String? errorMessage
});




}
/// @nodoc
class __$SubmitFifthPhasePageStateCopyWithImpl<$Res>
    implements _$SubmitFifthPhasePageStateCopyWith<$Res> {
  __$SubmitFifthPhasePageStateCopyWithImpl(this._self, this._then);

  final _SubmitFifthPhasePageState _self;
  final $Res Function(_SubmitFifthPhasePageState) _then;

/// Create a copy of SubmitFifthPhasePageState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? customerName = null,Object? customerPhone = freezed,Object? customerBankName = freezed,Object? closedProofUrl = freezed,Object? closedProofLocalPath = freezed,Object? isClosedProofPdf = null,Object? isClosedProofUploading = null,Object? closedProofInfo = null,Object? submitStatus = null,Object? isSubmitting = null,Object? errorMessage = freezed,}) {
  return _then(_SubmitFifthPhasePageState(
customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,customerPhone: freezed == customerPhone ? _self.customerPhone : customerPhone // ignore: cast_nullable_to_non_nullable
as String?,customerBankName: freezed == customerBankName ? _self.customerBankName : customerBankName // ignore: cast_nullable_to_non_nullable
as String?,closedProofUrl: freezed == closedProofUrl ? _self.closedProofUrl : closedProofUrl // ignore: cast_nullable_to_non_nullable
as String?,closedProofLocalPath: freezed == closedProofLocalPath ? _self.closedProofLocalPath : closedProofLocalPath // ignore: cast_nullable_to_non_nullable
as String?,isClosedProofPdf: null == isClosedProofPdf ? _self.isClosedProofPdf : isClosedProofPdf // ignore: cast_nullable_to_non_nullable
as bool,isClosedProofUploading: null == isClosedProofUploading ? _self.isClosedProofUploading : isClosedProofUploading // ignore: cast_nullable_to_non_nullable
as bool,closedProofInfo: null == closedProofInfo ? _self.closedProofInfo : closedProofInfo // ignore: cast_nullable_to_non_nullable
as String,submitStatus: null == submitStatus ? _self.submitStatus : submitStatus // ignore: cast_nullable_to_non_nullable
as SubmitStatus,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
