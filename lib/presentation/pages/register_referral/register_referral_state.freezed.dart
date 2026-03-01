// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_referral_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RegisterReferralState {

 String get name; String get email; String get password; String get confirmPassword; RegionModel? get selectedRegion; AreaModel? get selectedArea; bool get isPasswordVisible; bool get isConfirmPasswordVisible; bool get isNameDirty; bool get isEmailDirty; bool get isPasswordDirty; bool get isConfirmPasswordDirty; RegisterStatus get status; String? get errorMessage;
/// Create a copy of RegisterReferralState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterReferralStateCopyWith<RegisterReferralState> get copyWith => _$RegisterReferralStateCopyWithImpl<RegisterReferralState>(this as RegisterReferralState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterReferralState&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword)&&(identical(other.selectedRegion, selectedRegion) || other.selectedRegion == selectedRegion)&&(identical(other.selectedArea, selectedArea) || other.selectedArea == selectedArea)&&(identical(other.isPasswordVisible, isPasswordVisible) || other.isPasswordVisible == isPasswordVisible)&&(identical(other.isConfirmPasswordVisible, isConfirmPasswordVisible) || other.isConfirmPasswordVisible == isConfirmPasswordVisible)&&(identical(other.isNameDirty, isNameDirty) || other.isNameDirty == isNameDirty)&&(identical(other.isEmailDirty, isEmailDirty) || other.isEmailDirty == isEmailDirty)&&(identical(other.isPasswordDirty, isPasswordDirty) || other.isPasswordDirty == isPasswordDirty)&&(identical(other.isConfirmPasswordDirty, isConfirmPasswordDirty) || other.isConfirmPasswordDirty == isConfirmPasswordDirty)&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,name,email,password,confirmPassword,selectedRegion,selectedArea,isPasswordVisible,isConfirmPasswordVisible,isNameDirty,isEmailDirty,isPasswordDirty,isConfirmPasswordDirty,status,errorMessage);

@override
String toString() {
  return 'RegisterReferralState(name: $name, email: $email, password: $password, confirmPassword: $confirmPassword, selectedRegion: $selectedRegion, selectedArea: $selectedArea, isPasswordVisible: $isPasswordVisible, isConfirmPasswordVisible: $isConfirmPasswordVisible, isNameDirty: $isNameDirty, isEmailDirty: $isEmailDirty, isPasswordDirty: $isPasswordDirty, isConfirmPasswordDirty: $isConfirmPasswordDirty, status: $status, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $RegisterReferralStateCopyWith<$Res>  {
  factory $RegisterReferralStateCopyWith(RegisterReferralState value, $Res Function(RegisterReferralState) _then) = _$RegisterReferralStateCopyWithImpl;
@useResult
$Res call({
 String name, String email, String password, String confirmPassword, RegionModel? selectedRegion, AreaModel? selectedArea, bool isPasswordVisible, bool isConfirmPasswordVisible, bool isNameDirty, bool isEmailDirty, bool isPasswordDirty, bool isConfirmPasswordDirty, RegisterStatus status, String? errorMessage
});


$RegionModelCopyWith<$Res>? get selectedRegion;$AreaModelCopyWith<$Res>? get selectedArea;

}
/// @nodoc
class _$RegisterReferralStateCopyWithImpl<$Res>
    implements $RegisterReferralStateCopyWith<$Res> {
  _$RegisterReferralStateCopyWithImpl(this._self, this._then);

  final RegisterReferralState _self;
  final $Res Function(RegisterReferralState) _then;

/// Create a copy of RegisterReferralState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? email = null,Object? password = null,Object? confirmPassword = null,Object? selectedRegion = freezed,Object? selectedArea = freezed,Object? isPasswordVisible = null,Object? isConfirmPasswordVisible = null,Object? isNameDirty = null,Object? isEmailDirty = null,Object? isPasswordDirty = null,Object? isConfirmPasswordDirty = null,Object? status = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,confirmPassword: null == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as String,selectedRegion: freezed == selectedRegion ? _self.selectedRegion : selectedRegion // ignore: cast_nullable_to_non_nullable
as RegionModel?,selectedArea: freezed == selectedArea ? _self.selectedArea : selectedArea // ignore: cast_nullable_to_non_nullable
as AreaModel?,isPasswordVisible: null == isPasswordVisible ? _self.isPasswordVisible : isPasswordVisible // ignore: cast_nullable_to_non_nullable
as bool,isConfirmPasswordVisible: null == isConfirmPasswordVisible ? _self.isConfirmPasswordVisible : isConfirmPasswordVisible // ignore: cast_nullable_to_non_nullable
as bool,isNameDirty: null == isNameDirty ? _self.isNameDirty : isNameDirty // ignore: cast_nullable_to_non_nullable
as bool,isEmailDirty: null == isEmailDirty ? _self.isEmailDirty : isEmailDirty // ignore: cast_nullable_to_non_nullable
as bool,isPasswordDirty: null == isPasswordDirty ? _self.isPasswordDirty : isPasswordDirty // ignore: cast_nullable_to_non_nullable
as bool,isConfirmPasswordDirty: null == isConfirmPasswordDirty ? _self.isConfirmPasswordDirty : isConfirmPasswordDirty // ignore: cast_nullable_to_non_nullable
as bool,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as RegisterStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of RegisterReferralState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RegionModelCopyWith<$Res>? get selectedRegion {
    if (_self.selectedRegion == null) {
    return null;
  }

  return $RegionModelCopyWith<$Res>(_self.selectedRegion!, (value) {
    return _then(_self.copyWith(selectedRegion: value));
  });
}/// Create a copy of RegisterReferralState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AreaModelCopyWith<$Res>? get selectedArea {
    if (_self.selectedArea == null) {
    return null;
  }

  return $AreaModelCopyWith<$Res>(_self.selectedArea!, (value) {
    return _then(_self.copyWith(selectedArea: value));
  });
}
}


/// Adds pattern-matching-related methods to [RegisterReferralState].
extension RegisterReferralStatePatterns on RegisterReferralState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegisterReferralState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegisterReferralState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegisterReferralState value)  $default,){
final _that = this;
switch (_that) {
case _RegisterReferralState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegisterReferralState value)?  $default,){
final _that = this;
switch (_that) {
case _RegisterReferralState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String email,  String password,  String confirmPassword,  RegionModel? selectedRegion,  AreaModel? selectedArea,  bool isPasswordVisible,  bool isConfirmPasswordVisible,  bool isNameDirty,  bool isEmailDirty,  bool isPasswordDirty,  bool isConfirmPasswordDirty,  RegisterStatus status,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegisterReferralState() when $default != null:
return $default(_that.name,_that.email,_that.password,_that.confirmPassword,_that.selectedRegion,_that.selectedArea,_that.isPasswordVisible,_that.isConfirmPasswordVisible,_that.isNameDirty,_that.isEmailDirty,_that.isPasswordDirty,_that.isConfirmPasswordDirty,_that.status,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String email,  String password,  String confirmPassword,  RegionModel? selectedRegion,  AreaModel? selectedArea,  bool isPasswordVisible,  bool isConfirmPasswordVisible,  bool isNameDirty,  bool isEmailDirty,  bool isPasswordDirty,  bool isConfirmPasswordDirty,  RegisterStatus status,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _RegisterReferralState():
return $default(_that.name,_that.email,_that.password,_that.confirmPassword,_that.selectedRegion,_that.selectedArea,_that.isPasswordVisible,_that.isConfirmPasswordVisible,_that.isNameDirty,_that.isEmailDirty,_that.isPasswordDirty,_that.isConfirmPasswordDirty,_that.status,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String email,  String password,  String confirmPassword,  RegionModel? selectedRegion,  AreaModel? selectedArea,  bool isPasswordVisible,  bool isConfirmPasswordVisible,  bool isNameDirty,  bool isEmailDirty,  bool isPasswordDirty,  bool isConfirmPasswordDirty,  RegisterStatus status,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _RegisterReferralState() when $default != null:
return $default(_that.name,_that.email,_that.password,_that.confirmPassword,_that.selectedRegion,_that.selectedArea,_that.isPasswordVisible,_that.isConfirmPasswordVisible,_that.isNameDirty,_that.isEmailDirty,_that.isPasswordDirty,_that.isConfirmPasswordDirty,_that.status,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _RegisterReferralState extends RegisterReferralState {
  const _RegisterReferralState({this.name = '', this.email = '', this.password = '', this.confirmPassword = '', this.selectedRegion, this.selectedArea, this.isPasswordVisible = false, this.isConfirmPasswordVisible = false, this.isNameDirty = false, this.isEmailDirty = false, this.isPasswordDirty = false, this.isConfirmPasswordDirty = false, this.status = RegisterStatus.initial, this.errorMessage}): super._();
  

@override@JsonKey() final  String name;
@override@JsonKey() final  String email;
@override@JsonKey() final  String password;
@override@JsonKey() final  String confirmPassword;
@override final  RegionModel? selectedRegion;
@override final  AreaModel? selectedArea;
@override@JsonKey() final  bool isPasswordVisible;
@override@JsonKey() final  bool isConfirmPasswordVisible;
@override@JsonKey() final  bool isNameDirty;
@override@JsonKey() final  bool isEmailDirty;
@override@JsonKey() final  bool isPasswordDirty;
@override@JsonKey() final  bool isConfirmPasswordDirty;
@override@JsonKey() final  RegisterStatus status;
@override final  String? errorMessage;

/// Create a copy of RegisterReferralState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterReferralStateCopyWith<_RegisterReferralState> get copyWith => __$RegisterReferralStateCopyWithImpl<_RegisterReferralState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterReferralState&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword)&&(identical(other.selectedRegion, selectedRegion) || other.selectedRegion == selectedRegion)&&(identical(other.selectedArea, selectedArea) || other.selectedArea == selectedArea)&&(identical(other.isPasswordVisible, isPasswordVisible) || other.isPasswordVisible == isPasswordVisible)&&(identical(other.isConfirmPasswordVisible, isConfirmPasswordVisible) || other.isConfirmPasswordVisible == isConfirmPasswordVisible)&&(identical(other.isNameDirty, isNameDirty) || other.isNameDirty == isNameDirty)&&(identical(other.isEmailDirty, isEmailDirty) || other.isEmailDirty == isEmailDirty)&&(identical(other.isPasswordDirty, isPasswordDirty) || other.isPasswordDirty == isPasswordDirty)&&(identical(other.isConfirmPasswordDirty, isConfirmPasswordDirty) || other.isConfirmPasswordDirty == isConfirmPasswordDirty)&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,name,email,password,confirmPassword,selectedRegion,selectedArea,isPasswordVisible,isConfirmPasswordVisible,isNameDirty,isEmailDirty,isPasswordDirty,isConfirmPasswordDirty,status,errorMessage);

@override
String toString() {
  return 'RegisterReferralState(name: $name, email: $email, password: $password, confirmPassword: $confirmPassword, selectedRegion: $selectedRegion, selectedArea: $selectedArea, isPasswordVisible: $isPasswordVisible, isConfirmPasswordVisible: $isConfirmPasswordVisible, isNameDirty: $isNameDirty, isEmailDirty: $isEmailDirty, isPasswordDirty: $isPasswordDirty, isConfirmPasswordDirty: $isConfirmPasswordDirty, status: $status, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$RegisterReferralStateCopyWith<$Res> implements $RegisterReferralStateCopyWith<$Res> {
  factory _$RegisterReferralStateCopyWith(_RegisterReferralState value, $Res Function(_RegisterReferralState) _then) = __$RegisterReferralStateCopyWithImpl;
@override @useResult
$Res call({
 String name, String email, String password, String confirmPassword, RegionModel? selectedRegion, AreaModel? selectedArea, bool isPasswordVisible, bool isConfirmPasswordVisible, bool isNameDirty, bool isEmailDirty, bool isPasswordDirty, bool isConfirmPasswordDirty, RegisterStatus status, String? errorMessage
});


@override $RegionModelCopyWith<$Res>? get selectedRegion;@override $AreaModelCopyWith<$Res>? get selectedArea;

}
/// @nodoc
class __$RegisterReferralStateCopyWithImpl<$Res>
    implements _$RegisterReferralStateCopyWith<$Res> {
  __$RegisterReferralStateCopyWithImpl(this._self, this._then);

  final _RegisterReferralState _self;
  final $Res Function(_RegisterReferralState) _then;

/// Create a copy of RegisterReferralState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? email = null,Object? password = null,Object? confirmPassword = null,Object? selectedRegion = freezed,Object? selectedArea = freezed,Object? isPasswordVisible = null,Object? isConfirmPasswordVisible = null,Object? isNameDirty = null,Object? isEmailDirty = null,Object? isPasswordDirty = null,Object? isConfirmPasswordDirty = null,Object? status = null,Object? errorMessage = freezed,}) {
  return _then(_RegisterReferralState(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,confirmPassword: null == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as String,selectedRegion: freezed == selectedRegion ? _self.selectedRegion : selectedRegion // ignore: cast_nullable_to_non_nullable
as RegionModel?,selectedArea: freezed == selectedArea ? _self.selectedArea : selectedArea // ignore: cast_nullable_to_non_nullable
as AreaModel?,isPasswordVisible: null == isPasswordVisible ? _self.isPasswordVisible : isPasswordVisible // ignore: cast_nullable_to_non_nullable
as bool,isConfirmPasswordVisible: null == isConfirmPasswordVisible ? _self.isConfirmPasswordVisible : isConfirmPasswordVisible // ignore: cast_nullable_to_non_nullable
as bool,isNameDirty: null == isNameDirty ? _self.isNameDirty : isNameDirty // ignore: cast_nullable_to_non_nullable
as bool,isEmailDirty: null == isEmailDirty ? _self.isEmailDirty : isEmailDirty // ignore: cast_nullable_to_non_nullable
as bool,isPasswordDirty: null == isPasswordDirty ? _self.isPasswordDirty : isPasswordDirty // ignore: cast_nullable_to_non_nullable
as bool,isConfirmPasswordDirty: null == isConfirmPasswordDirty ? _self.isConfirmPasswordDirty : isConfirmPasswordDirty // ignore: cast_nullable_to_non_nullable
as bool,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as RegisterStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of RegisterReferralState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RegionModelCopyWith<$Res>? get selectedRegion {
    if (_self.selectedRegion == null) {
    return null;
  }

  return $RegionModelCopyWith<$Res>(_self.selectedRegion!, (value) {
    return _then(_self.copyWith(selectedRegion: value));
  });
}/// Create a copy of RegisterReferralState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AreaModelCopyWith<$Res>? get selectedArea {
    if (_self.selectedArea == null) {
    return null;
  }

  return $AreaModelCopyWith<$Res>(_self.selectedArea!, (value) {
    return _then(_self.copyWith(selectedArea: value));
  });
}
}

// dart format on
