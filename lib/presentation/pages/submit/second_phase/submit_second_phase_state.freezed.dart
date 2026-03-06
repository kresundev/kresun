// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_second_phase_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubmitSecondPhaseState {

 String get bankName; bool get isBankNameDirty; String? get simulationUrl; String? get simulationLocalPath; bool get isSimulationPdf; bool get isSimulationUploading; String get simulationInfo; SubmitStatus get submitStatus; bool get isSubmitting; String? get errorMessage;
/// Create a copy of SubmitSecondPhaseState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitSecondPhaseStateCopyWith<SubmitSecondPhaseState> get copyWith => _$SubmitSecondPhaseStateCopyWithImpl<SubmitSecondPhaseState>(this as SubmitSecondPhaseState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitSecondPhaseState&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.isBankNameDirty, isBankNameDirty) || other.isBankNameDirty == isBankNameDirty)&&(identical(other.simulationUrl, simulationUrl) || other.simulationUrl == simulationUrl)&&(identical(other.simulationLocalPath, simulationLocalPath) || other.simulationLocalPath == simulationLocalPath)&&(identical(other.isSimulationPdf, isSimulationPdf) || other.isSimulationPdf == isSimulationPdf)&&(identical(other.isSimulationUploading, isSimulationUploading) || other.isSimulationUploading == isSimulationUploading)&&(identical(other.simulationInfo, simulationInfo) || other.simulationInfo == simulationInfo)&&(identical(other.submitStatus, submitStatus) || other.submitStatus == submitStatus)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,bankName,isBankNameDirty,simulationUrl,simulationLocalPath,isSimulationPdf,isSimulationUploading,simulationInfo,submitStatus,isSubmitting,errorMessage);

@override
String toString() {
  return 'SubmitSecondPhaseState(bankName: $bankName, isBankNameDirty: $isBankNameDirty, simulationUrl: $simulationUrl, simulationLocalPath: $simulationLocalPath, isSimulationPdf: $isSimulationPdf, isSimulationUploading: $isSimulationUploading, simulationInfo: $simulationInfo, submitStatus: $submitStatus, isSubmitting: $isSubmitting, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $SubmitSecondPhaseStateCopyWith<$Res>  {
  factory $SubmitSecondPhaseStateCopyWith(SubmitSecondPhaseState value, $Res Function(SubmitSecondPhaseState) _then) = _$SubmitSecondPhaseStateCopyWithImpl;
@useResult
$Res call({
 String bankName, bool isBankNameDirty, String? simulationUrl, String? simulationLocalPath, bool isSimulationPdf, bool isSimulationUploading, String simulationInfo, SubmitStatus submitStatus, bool isSubmitting, String? errorMessage
});




}
/// @nodoc
class _$SubmitSecondPhaseStateCopyWithImpl<$Res>
    implements $SubmitSecondPhaseStateCopyWith<$Res> {
  _$SubmitSecondPhaseStateCopyWithImpl(this._self, this._then);

  final SubmitSecondPhaseState _self;
  final $Res Function(SubmitSecondPhaseState) _then;

/// Create a copy of SubmitSecondPhaseState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bankName = null,Object? isBankNameDirty = null,Object? simulationUrl = freezed,Object? simulationLocalPath = freezed,Object? isSimulationPdf = null,Object? isSimulationUploading = null,Object? simulationInfo = null,Object? submitStatus = null,Object? isSubmitting = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
bankName: null == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String,isBankNameDirty: null == isBankNameDirty ? _self.isBankNameDirty : isBankNameDirty // ignore: cast_nullable_to_non_nullable
as bool,simulationUrl: freezed == simulationUrl ? _self.simulationUrl : simulationUrl // ignore: cast_nullable_to_non_nullable
as String?,simulationLocalPath: freezed == simulationLocalPath ? _self.simulationLocalPath : simulationLocalPath // ignore: cast_nullable_to_non_nullable
as String?,isSimulationPdf: null == isSimulationPdf ? _self.isSimulationPdf : isSimulationPdf // ignore: cast_nullable_to_non_nullable
as bool,isSimulationUploading: null == isSimulationUploading ? _self.isSimulationUploading : isSimulationUploading // ignore: cast_nullable_to_non_nullable
as bool,simulationInfo: null == simulationInfo ? _self.simulationInfo : simulationInfo // ignore: cast_nullable_to_non_nullable
as String,submitStatus: null == submitStatus ? _self.submitStatus : submitStatus // ignore: cast_nullable_to_non_nullable
as SubmitStatus,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SubmitSecondPhaseState].
extension SubmitSecondPhaseStatePatterns on SubmitSecondPhaseState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubmitSecondPhaseState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmitSecondPhaseState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubmitSecondPhaseState value)  $default,){
final _that = this;
switch (_that) {
case _SubmitSecondPhaseState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubmitSecondPhaseState value)?  $default,){
final _that = this;
switch (_that) {
case _SubmitSecondPhaseState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String bankName,  bool isBankNameDirty,  String? simulationUrl,  String? simulationLocalPath,  bool isSimulationPdf,  bool isSimulationUploading,  String simulationInfo,  SubmitStatus submitStatus,  bool isSubmitting,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubmitSecondPhaseState() when $default != null:
return $default(_that.bankName,_that.isBankNameDirty,_that.simulationUrl,_that.simulationLocalPath,_that.isSimulationPdf,_that.isSimulationUploading,_that.simulationInfo,_that.submitStatus,_that.isSubmitting,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String bankName,  bool isBankNameDirty,  String? simulationUrl,  String? simulationLocalPath,  bool isSimulationPdf,  bool isSimulationUploading,  String simulationInfo,  SubmitStatus submitStatus,  bool isSubmitting,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _SubmitSecondPhaseState():
return $default(_that.bankName,_that.isBankNameDirty,_that.simulationUrl,_that.simulationLocalPath,_that.isSimulationPdf,_that.isSimulationUploading,_that.simulationInfo,_that.submitStatus,_that.isSubmitting,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String bankName,  bool isBankNameDirty,  String? simulationUrl,  String? simulationLocalPath,  bool isSimulationPdf,  bool isSimulationUploading,  String simulationInfo,  SubmitStatus submitStatus,  bool isSubmitting,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _SubmitSecondPhaseState() when $default != null:
return $default(_that.bankName,_that.isBankNameDirty,_that.simulationUrl,_that.simulationLocalPath,_that.isSimulationPdf,_that.isSimulationUploading,_that.simulationInfo,_that.submitStatus,_that.isSubmitting,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _SubmitSecondPhaseState extends SubmitSecondPhaseState {
  const _SubmitSecondPhaseState({this.bankName = '', this.isBankNameDirty = false, this.simulationUrl, this.simulationLocalPath, this.isSimulationPdf = false, this.isSimulationUploading = false, this.simulationInfo = '', this.submitStatus = SubmitStatus.init, this.isSubmitting = false, this.errorMessage}): super._();
  

@override@JsonKey() final  String bankName;
@override@JsonKey() final  bool isBankNameDirty;
@override final  String? simulationUrl;
@override final  String? simulationLocalPath;
@override@JsonKey() final  bool isSimulationPdf;
@override@JsonKey() final  bool isSimulationUploading;
@override@JsonKey() final  String simulationInfo;
@override@JsonKey() final  SubmitStatus submitStatus;
@override@JsonKey() final  bool isSubmitting;
@override final  String? errorMessage;

/// Create a copy of SubmitSecondPhaseState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitSecondPhaseStateCopyWith<_SubmitSecondPhaseState> get copyWith => __$SubmitSecondPhaseStateCopyWithImpl<_SubmitSecondPhaseState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitSecondPhaseState&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.isBankNameDirty, isBankNameDirty) || other.isBankNameDirty == isBankNameDirty)&&(identical(other.simulationUrl, simulationUrl) || other.simulationUrl == simulationUrl)&&(identical(other.simulationLocalPath, simulationLocalPath) || other.simulationLocalPath == simulationLocalPath)&&(identical(other.isSimulationPdf, isSimulationPdf) || other.isSimulationPdf == isSimulationPdf)&&(identical(other.isSimulationUploading, isSimulationUploading) || other.isSimulationUploading == isSimulationUploading)&&(identical(other.simulationInfo, simulationInfo) || other.simulationInfo == simulationInfo)&&(identical(other.submitStatus, submitStatus) || other.submitStatus == submitStatus)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,bankName,isBankNameDirty,simulationUrl,simulationLocalPath,isSimulationPdf,isSimulationUploading,simulationInfo,submitStatus,isSubmitting,errorMessage);

@override
String toString() {
  return 'SubmitSecondPhaseState(bankName: $bankName, isBankNameDirty: $isBankNameDirty, simulationUrl: $simulationUrl, simulationLocalPath: $simulationLocalPath, isSimulationPdf: $isSimulationPdf, isSimulationUploading: $isSimulationUploading, simulationInfo: $simulationInfo, submitStatus: $submitStatus, isSubmitting: $isSubmitting, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$SubmitSecondPhaseStateCopyWith<$Res> implements $SubmitSecondPhaseStateCopyWith<$Res> {
  factory _$SubmitSecondPhaseStateCopyWith(_SubmitSecondPhaseState value, $Res Function(_SubmitSecondPhaseState) _then) = __$SubmitSecondPhaseStateCopyWithImpl;
@override @useResult
$Res call({
 String bankName, bool isBankNameDirty, String? simulationUrl, String? simulationLocalPath, bool isSimulationPdf, bool isSimulationUploading, String simulationInfo, SubmitStatus submitStatus, bool isSubmitting, String? errorMessage
});




}
/// @nodoc
class __$SubmitSecondPhaseStateCopyWithImpl<$Res>
    implements _$SubmitSecondPhaseStateCopyWith<$Res> {
  __$SubmitSecondPhaseStateCopyWithImpl(this._self, this._then);

  final _SubmitSecondPhaseState _self;
  final $Res Function(_SubmitSecondPhaseState) _then;

/// Create a copy of SubmitSecondPhaseState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bankName = null,Object? isBankNameDirty = null,Object? simulationUrl = freezed,Object? simulationLocalPath = freezed,Object? isSimulationPdf = null,Object? isSimulationUploading = null,Object? simulationInfo = null,Object? submitStatus = null,Object? isSubmitting = null,Object? errorMessage = freezed,}) {
  return _then(_SubmitSecondPhaseState(
bankName: null == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String,isBankNameDirty: null == isBankNameDirty ? _self.isBankNameDirty : isBankNameDirty // ignore: cast_nullable_to_non_nullable
as bool,simulationUrl: freezed == simulationUrl ? _self.simulationUrl : simulationUrl // ignore: cast_nullable_to_non_nullable
as String?,simulationLocalPath: freezed == simulationLocalPath ? _self.simulationLocalPath : simulationLocalPath // ignore: cast_nullable_to_non_nullable
as String?,isSimulationPdf: null == isSimulationPdf ? _self.isSimulationPdf : isSimulationPdf // ignore: cast_nullable_to_non_nullable
as bool,isSimulationUploading: null == isSimulationUploading ? _self.isSimulationUploading : isSimulationUploading // ignore: cast_nullable_to_non_nullable
as bool,simulationInfo: null == simulationInfo ? _self.simulationInfo : simulationInfo // ignore: cast_nullable_to_non_nullable
as String,submitStatus: null == submitStatus ? _self.submitStatus : submitStatus // ignore: cast_nullable_to_non_nullable
as SubmitStatus,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
