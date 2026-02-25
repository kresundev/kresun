// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginPageState {

 String get email; String get password; bool get isPasswordVisible; bool get isEmailDirty; bool get isPasswordDirty; LoginStatus get status; String? get errorMessage; UserModel? get user;
/// Create a copy of LoginPageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginPageStateCopyWith<LoginPageState> get copyWith => _$LoginPageStateCopyWithImpl<LoginPageState>(this as LoginPageState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginPageState&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.isPasswordVisible, isPasswordVisible) || other.isPasswordVisible == isPasswordVisible)&&(identical(other.isEmailDirty, isEmailDirty) || other.isEmailDirty == isEmailDirty)&&(identical(other.isPasswordDirty, isPasswordDirty) || other.isPasswordDirty == isPasswordDirty)&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,email,password,isPasswordVisible,isEmailDirty,isPasswordDirty,status,errorMessage,user);

@override
String toString() {
  return 'LoginPageState(email: $email, password: $password, isPasswordVisible: $isPasswordVisible, isEmailDirty: $isEmailDirty, isPasswordDirty: $isPasswordDirty, status: $status, errorMessage: $errorMessage, user: $user)';
}


}

/// @nodoc
abstract mixin class $LoginPageStateCopyWith<$Res>  {
  factory $LoginPageStateCopyWith(LoginPageState value, $Res Function(LoginPageState) _then) = _$LoginPageStateCopyWithImpl;
@useResult
$Res call({
 String email, String password, bool isPasswordVisible, bool isEmailDirty, bool isPasswordDirty, LoginStatus status, String? errorMessage, UserModel? user
});


$UserModelCopyWith<$Res>? get user;

}
/// @nodoc
class _$LoginPageStateCopyWithImpl<$Res>
    implements $LoginPageStateCopyWith<$Res> {
  _$LoginPageStateCopyWithImpl(this._self, this._then);

  final LoginPageState _self;
  final $Res Function(LoginPageState) _then;

/// Create a copy of LoginPageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? password = null,Object? isPasswordVisible = null,Object? isEmailDirty = null,Object? isPasswordDirty = null,Object? status = null,Object? errorMessage = freezed,Object? user = freezed,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,isPasswordVisible: null == isPasswordVisible ? _self.isPasswordVisible : isPasswordVisible // ignore: cast_nullable_to_non_nullable
as bool,isEmailDirty: null == isEmailDirty ? _self.isEmailDirty : isEmailDirty // ignore: cast_nullable_to_non_nullable
as bool,isPasswordDirty: null == isPasswordDirty ? _self.isPasswordDirty : isPasswordDirty // ignore: cast_nullable_to_non_nullable
as bool,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as LoginStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserModel?,
  ));
}
/// Create a copy of LoginPageState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserModelCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [LoginPageState].
extension LoginPageStatePatterns on LoginPageState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginPageState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginPageState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginPageState value)  $default,){
final _that = this;
switch (_that) {
case _LoginPageState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginPageState value)?  $default,){
final _that = this;
switch (_that) {
case _LoginPageState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  String password,  bool isPasswordVisible,  bool isEmailDirty,  bool isPasswordDirty,  LoginStatus status,  String? errorMessage,  UserModel? user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginPageState() when $default != null:
return $default(_that.email,_that.password,_that.isPasswordVisible,_that.isEmailDirty,_that.isPasswordDirty,_that.status,_that.errorMessage,_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  String password,  bool isPasswordVisible,  bool isEmailDirty,  bool isPasswordDirty,  LoginStatus status,  String? errorMessage,  UserModel? user)  $default,) {final _that = this;
switch (_that) {
case _LoginPageState():
return $default(_that.email,_that.password,_that.isPasswordVisible,_that.isEmailDirty,_that.isPasswordDirty,_that.status,_that.errorMessage,_that.user);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  String password,  bool isPasswordVisible,  bool isEmailDirty,  bool isPasswordDirty,  LoginStatus status,  String? errorMessage,  UserModel? user)?  $default,) {final _that = this;
switch (_that) {
case _LoginPageState() when $default != null:
return $default(_that.email,_that.password,_that.isPasswordVisible,_that.isEmailDirty,_that.isPasswordDirty,_that.status,_that.errorMessage,_that.user);case _:
  return null;

}
}

}

/// @nodoc


class _LoginPageState extends LoginPageState {
  const _LoginPageState({this.email = '', this.password = '', this.isPasswordVisible = false, this.isEmailDirty = false, this.isPasswordDirty = false, this.status = LoginStatus.initial, this.errorMessage, this.user}): super._();
  

@override@JsonKey() final  String email;
@override@JsonKey() final  String password;
@override@JsonKey() final  bool isPasswordVisible;
@override@JsonKey() final  bool isEmailDirty;
@override@JsonKey() final  bool isPasswordDirty;
@override@JsonKey() final  LoginStatus status;
@override final  String? errorMessage;
@override final  UserModel? user;

/// Create a copy of LoginPageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginPageStateCopyWith<_LoginPageState> get copyWith => __$LoginPageStateCopyWithImpl<_LoginPageState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginPageState&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.isPasswordVisible, isPasswordVisible) || other.isPasswordVisible == isPasswordVisible)&&(identical(other.isEmailDirty, isEmailDirty) || other.isEmailDirty == isEmailDirty)&&(identical(other.isPasswordDirty, isPasswordDirty) || other.isPasswordDirty == isPasswordDirty)&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,email,password,isPasswordVisible,isEmailDirty,isPasswordDirty,status,errorMessage,user);

@override
String toString() {
  return 'LoginPageState(email: $email, password: $password, isPasswordVisible: $isPasswordVisible, isEmailDirty: $isEmailDirty, isPasswordDirty: $isPasswordDirty, status: $status, errorMessage: $errorMessage, user: $user)';
}


}

/// @nodoc
abstract mixin class _$LoginPageStateCopyWith<$Res> implements $LoginPageStateCopyWith<$Res> {
  factory _$LoginPageStateCopyWith(_LoginPageState value, $Res Function(_LoginPageState) _then) = __$LoginPageStateCopyWithImpl;
@override @useResult
$Res call({
 String email, String password, bool isPasswordVisible, bool isEmailDirty, bool isPasswordDirty, LoginStatus status, String? errorMessage, UserModel? user
});


@override $UserModelCopyWith<$Res>? get user;

}
/// @nodoc
class __$LoginPageStateCopyWithImpl<$Res>
    implements _$LoginPageStateCopyWith<$Res> {
  __$LoginPageStateCopyWithImpl(this._self, this._then);

  final _LoginPageState _self;
  final $Res Function(_LoginPageState) _then;

/// Create a copy of LoginPageState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,Object? isPasswordVisible = null,Object? isEmailDirty = null,Object? isPasswordDirty = null,Object? status = null,Object? errorMessage = freezed,Object? user = freezed,}) {
  return _then(_LoginPageState(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,isPasswordVisible: null == isPasswordVisible ? _self.isPasswordVisible : isPasswordVisible // ignore: cast_nullable_to_non_nullable
as bool,isEmailDirty: null == isEmailDirty ? _self.isEmailDirty : isEmailDirty // ignore: cast_nullable_to_non_nullable
as bool,isPasswordDirty: null == isPasswordDirty ? _self.isPasswordDirty : isPasswordDirty // ignore: cast_nullable_to_non_nullable
as bool,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as LoginStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserModel?,
  ));
}

/// Create a copy of LoginPageState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserModelCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
