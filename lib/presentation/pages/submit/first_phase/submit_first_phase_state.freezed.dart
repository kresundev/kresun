// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_first_phase_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubmitFirstPhaseState {

 String get name; bool get isNameDirty; bool get isNameReadOnly; String? get ktpUrl; String? get ktpLocalPath; bool get isKtpUploading; String? get skUrl; String? get skLocalPath; bool get isSkUploading; SubmitStatus get submitStatus; bool get isSubmitting; String? get errorMessage;
/// Create a copy of SubmitFirstPhaseState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitFirstPhaseStateCopyWith<SubmitFirstPhaseState> get copyWith => _$SubmitFirstPhaseStateCopyWithImpl<SubmitFirstPhaseState>(this as SubmitFirstPhaseState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitFirstPhaseState&&(identical(other.name, name) || other.name == name)&&(identical(other.isNameDirty, isNameDirty) || other.isNameDirty == isNameDirty)&&(identical(other.isNameReadOnly, isNameReadOnly) || other.isNameReadOnly == isNameReadOnly)&&(identical(other.ktpUrl, ktpUrl) || other.ktpUrl == ktpUrl)&&(identical(other.ktpLocalPath, ktpLocalPath) || other.ktpLocalPath == ktpLocalPath)&&(identical(other.isKtpUploading, isKtpUploading) || other.isKtpUploading == isKtpUploading)&&(identical(other.skUrl, skUrl) || other.skUrl == skUrl)&&(identical(other.skLocalPath, skLocalPath) || other.skLocalPath == skLocalPath)&&(identical(other.isSkUploading, isSkUploading) || other.isSkUploading == isSkUploading)&&(identical(other.submitStatus, submitStatus) || other.submitStatus == submitStatus)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,name,isNameDirty,isNameReadOnly,ktpUrl,ktpLocalPath,isKtpUploading,skUrl,skLocalPath,isSkUploading,submitStatus,isSubmitting,errorMessage);

@override
String toString() {
  return 'SubmitFirstPhaseState(name: $name, isNameDirty: $isNameDirty, isNameReadOnly: $isNameReadOnly, ktpUrl: $ktpUrl, ktpLocalPath: $ktpLocalPath, isKtpUploading: $isKtpUploading, skUrl: $skUrl, skLocalPath: $skLocalPath, isSkUploading: $isSkUploading, submitStatus: $submitStatus, isSubmitting: $isSubmitting, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $SubmitFirstPhaseStateCopyWith<$Res>  {
  factory $SubmitFirstPhaseStateCopyWith(SubmitFirstPhaseState value, $Res Function(SubmitFirstPhaseState) _then) = _$SubmitFirstPhaseStateCopyWithImpl;
@useResult
$Res call({
 String name, bool isNameDirty, bool isNameReadOnly, String? ktpUrl, String? ktpLocalPath, bool isKtpUploading, String? skUrl, String? skLocalPath, bool isSkUploading, SubmitStatus submitStatus, bool isSubmitting, String? errorMessage
});




}
/// @nodoc
class _$SubmitFirstPhaseStateCopyWithImpl<$Res>
    implements $SubmitFirstPhaseStateCopyWith<$Res> {
  _$SubmitFirstPhaseStateCopyWithImpl(this._self, this._then);

  final SubmitFirstPhaseState _self;
  final $Res Function(SubmitFirstPhaseState) _then;

/// Create a copy of SubmitFirstPhaseState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? isNameDirty = null,Object? isNameReadOnly = null,Object? ktpUrl = freezed,Object? ktpLocalPath = freezed,Object? isKtpUploading = null,Object? skUrl = freezed,Object? skLocalPath = freezed,Object? isSkUploading = null,Object? submitStatus = null,Object? isSubmitting = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isNameDirty: null == isNameDirty ? _self.isNameDirty : isNameDirty // ignore: cast_nullable_to_non_nullable
as bool,isNameReadOnly: null == isNameReadOnly ? _self.isNameReadOnly : isNameReadOnly // ignore: cast_nullable_to_non_nullable
as bool,ktpUrl: freezed == ktpUrl ? _self.ktpUrl : ktpUrl // ignore: cast_nullable_to_non_nullable
as String?,ktpLocalPath: freezed == ktpLocalPath ? _self.ktpLocalPath : ktpLocalPath // ignore: cast_nullable_to_non_nullable
as String?,isKtpUploading: null == isKtpUploading ? _self.isKtpUploading : isKtpUploading // ignore: cast_nullable_to_non_nullable
as bool,skUrl: freezed == skUrl ? _self.skUrl : skUrl // ignore: cast_nullable_to_non_nullable
as String?,skLocalPath: freezed == skLocalPath ? _self.skLocalPath : skLocalPath // ignore: cast_nullable_to_non_nullable
as String?,isSkUploading: null == isSkUploading ? _self.isSkUploading : isSkUploading // ignore: cast_nullable_to_non_nullable
as bool,submitStatus: null == submitStatus ? _self.submitStatus : submitStatus // ignore: cast_nullable_to_non_nullable
as SubmitStatus,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SubmitFirstPhaseState].
extension SubmitFirstPhaseStatePatterns on SubmitFirstPhaseState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubmitFirstPhaseState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmitFirstPhaseState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubmitFirstPhaseState value)  $default,){
final _that = this;
switch (_that) {
case _SubmitFirstPhaseState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubmitFirstPhaseState value)?  $default,){
final _that = this;
switch (_that) {
case _SubmitFirstPhaseState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  bool isNameDirty,  bool isNameReadOnly,  String? ktpUrl,  String? ktpLocalPath,  bool isKtpUploading,  String? skUrl,  String? skLocalPath,  bool isSkUploading,  SubmitStatus submitStatus,  bool isSubmitting,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubmitFirstPhaseState() when $default != null:
return $default(_that.name,_that.isNameDirty,_that.isNameReadOnly,_that.ktpUrl,_that.ktpLocalPath,_that.isKtpUploading,_that.skUrl,_that.skLocalPath,_that.isSkUploading,_that.submitStatus,_that.isSubmitting,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  bool isNameDirty,  bool isNameReadOnly,  String? ktpUrl,  String? ktpLocalPath,  bool isKtpUploading,  String? skUrl,  String? skLocalPath,  bool isSkUploading,  SubmitStatus submitStatus,  bool isSubmitting,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _SubmitFirstPhaseState():
return $default(_that.name,_that.isNameDirty,_that.isNameReadOnly,_that.ktpUrl,_that.ktpLocalPath,_that.isKtpUploading,_that.skUrl,_that.skLocalPath,_that.isSkUploading,_that.submitStatus,_that.isSubmitting,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  bool isNameDirty,  bool isNameReadOnly,  String? ktpUrl,  String? ktpLocalPath,  bool isKtpUploading,  String? skUrl,  String? skLocalPath,  bool isSkUploading,  SubmitStatus submitStatus,  bool isSubmitting,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _SubmitFirstPhaseState() when $default != null:
return $default(_that.name,_that.isNameDirty,_that.isNameReadOnly,_that.ktpUrl,_that.ktpLocalPath,_that.isKtpUploading,_that.skUrl,_that.skLocalPath,_that.isSkUploading,_that.submitStatus,_that.isSubmitting,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _SubmitFirstPhaseState extends SubmitFirstPhaseState {
  const _SubmitFirstPhaseState({this.name = '', this.isNameDirty = false, this.isNameReadOnly = false, this.ktpUrl, this.ktpLocalPath, this.isKtpUploading = false, this.skUrl, this.skLocalPath, this.isSkUploading = false, this.submitStatus = SubmitStatus.init, this.isSubmitting = false, this.errorMessage}): super._();
  

@override@JsonKey() final  String name;
@override@JsonKey() final  bool isNameDirty;
@override@JsonKey() final  bool isNameReadOnly;
@override final  String? ktpUrl;
@override final  String? ktpLocalPath;
@override@JsonKey() final  bool isKtpUploading;
@override final  String? skUrl;
@override final  String? skLocalPath;
@override@JsonKey() final  bool isSkUploading;
@override@JsonKey() final  SubmitStatus submitStatus;
@override@JsonKey() final  bool isSubmitting;
@override final  String? errorMessage;

/// Create a copy of SubmitFirstPhaseState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitFirstPhaseStateCopyWith<_SubmitFirstPhaseState> get copyWith => __$SubmitFirstPhaseStateCopyWithImpl<_SubmitFirstPhaseState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitFirstPhaseState&&(identical(other.name, name) || other.name == name)&&(identical(other.isNameDirty, isNameDirty) || other.isNameDirty == isNameDirty)&&(identical(other.isNameReadOnly, isNameReadOnly) || other.isNameReadOnly == isNameReadOnly)&&(identical(other.ktpUrl, ktpUrl) || other.ktpUrl == ktpUrl)&&(identical(other.ktpLocalPath, ktpLocalPath) || other.ktpLocalPath == ktpLocalPath)&&(identical(other.isKtpUploading, isKtpUploading) || other.isKtpUploading == isKtpUploading)&&(identical(other.skUrl, skUrl) || other.skUrl == skUrl)&&(identical(other.skLocalPath, skLocalPath) || other.skLocalPath == skLocalPath)&&(identical(other.isSkUploading, isSkUploading) || other.isSkUploading == isSkUploading)&&(identical(other.submitStatus, submitStatus) || other.submitStatus == submitStatus)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,name,isNameDirty,isNameReadOnly,ktpUrl,ktpLocalPath,isKtpUploading,skUrl,skLocalPath,isSkUploading,submitStatus,isSubmitting,errorMessage);

@override
String toString() {
  return 'SubmitFirstPhaseState(name: $name, isNameDirty: $isNameDirty, isNameReadOnly: $isNameReadOnly, ktpUrl: $ktpUrl, ktpLocalPath: $ktpLocalPath, isKtpUploading: $isKtpUploading, skUrl: $skUrl, skLocalPath: $skLocalPath, isSkUploading: $isSkUploading, submitStatus: $submitStatus, isSubmitting: $isSubmitting, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$SubmitFirstPhaseStateCopyWith<$Res> implements $SubmitFirstPhaseStateCopyWith<$Res> {
  factory _$SubmitFirstPhaseStateCopyWith(_SubmitFirstPhaseState value, $Res Function(_SubmitFirstPhaseState) _then) = __$SubmitFirstPhaseStateCopyWithImpl;
@override @useResult
$Res call({
 String name, bool isNameDirty, bool isNameReadOnly, String? ktpUrl, String? ktpLocalPath, bool isKtpUploading, String? skUrl, String? skLocalPath, bool isSkUploading, SubmitStatus submitStatus, bool isSubmitting, String? errorMessage
});




}
/// @nodoc
class __$SubmitFirstPhaseStateCopyWithImpl<$Res>
    implements _$SubmitFirstPhaseStateCopyWith<$Res> {
  __$SubmitFirstPhaseStateCopyWithImpl(this._self, this._then);

  final _SubmitFirstPhaseState _self;
  final $Res Function(_SubmitFirstPhaseState) _then;

/// Create a copy of SubmitFirstPhaseState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? isNameDirty = null,Object? isNameReadOnly = null,Object? ktpUrl = freezed,Object? ktpLocalPath = freezed,Object? isKtpUploading = null,Object? skUrl = freezed,Object? skLocalPath = freezed,Object? isSkUploading = null,Object? submitStatus = null,Object? isSubmitting = null,Object? errorMessage = freezed,}) {
  return _then(_SubmitFirstPhaseState(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isNameDirty: null == isNameDirty ? _self.isNameDirty : isNameDirty // ignore: cast_nullable_to_non_nullable
as bool,isNameReadOnly: null == isNameReadOnly ? _self.isNameReadOnly : isNameReadOnly // ignore: cast_nullable_to_non_nullable
as bool,ktpUrl: freezed == ktpUrl ? _self.ktpUrl : ktpUrl // ignore: cast_nullable_to_non_nullable
as String?,ktpLocalPath: freezed == ktpLocalPath ? _self.ktpLocalPath : ktpLocalPath // ignore: cast_nullable_to_non_nullable
as String?,isKtpUploading: null == isKtpUploading ? _self.isKtpUploading : isKtpUploading // ignore: cast_nullable_to_non_nullable
as bool,skUrl: freezed == skUrl ? _self.skUrl : skUrl // ignore: cast_nullable_to_non_nullable
as String?,skLocalPath: freezed == skLocalPath ? _self.skLocalPath : skLocalPath // ignore: cast_nullable_to_non_nullable
as String?,isSkUploading: null == isSkUploading ? _self.isSkUploading : isSkUploading // ignore: cast_nullable_to_non_nullable
as bool,submitStatus: null == submitStatus ? _self.submitStatus : submitStatus // ignore: cast_nullable_to_non_nullable
as SubmitStatus,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
