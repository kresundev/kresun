// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'master_customer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MasterCustomerModel {

 String get id; String get name;@JsonKey(name: 'phone_number') String get phoneNumber;@JsonKey(name: 'master_customer_status') MasterCustomerStatus get masterCustomerStatus;@JsonKey(name: 'ktp_url') String? get ktpUrl;@JsonKey(name: 'kk_url') String? get kkUrl;@JsonKey(name: 'bank_name') String? get bankName;@JsonKey(name: 'simulation_url') String? get simulationUrl;@JsonKey(name: 'simulation_info') String? get simulationInfo;@JsonKey(name: 'review_info') String? get reviewInfo;@JsonKey(name: 'sk_url') String? get skUrl;@JsonKey(name: 'akte_url') String? get akteUrl;@JsonKey(name: 'closed_proof_url') String? get closedProofUrl;
/// Create a copy of MasterCustomerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MasterCustomerModelCopyWith<MasterCustomerModel> get copyWith => _$MasterCustomerModelCopyWithImpl<MasterCustomerModel>(this as MasterCustomerModel, _$identity);

  /// Serializes this MasterCustomerModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MasterCustomerModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.masterCustomerStatus, masterCustomerStatus) || other.masterCustomerStatus == masterCustomerStatus)&&(identical(other.ktpUrl, ktpUrl) || other.ktpUrl == ktpUrl)&&(identical(other.kkUrl, kkUrl) || other.kkUrl == kkUrl)&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.simulationUrl, simulationUrl) || other.simulationUrl == simulationUrl)&&(identical(other.simulationInfo, simulationInfo) || other.simulationInfo == simulationInfo)&&(identical(other.reviewInfo, reviewInfo) || other.reviewInfo == reviewInfo)&&(identical(other.skUrl, skUrl) || other.skUrl == skUrl)&&(identical(other.akteUrl, akteUrl) || other.akteUrl == akteUrl)&&(identical(other.closedProofUrl, closedProofUrl) || other.closedProofUrl == closedProofUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,phoneNumber,masterCustomerStatus,ktpUrl,kkUrl,bankName,simulationUrl,simulationInfo,reviewInfo,skUrl,akteUrl,closedProofUrl);

@override
String toString() {
  return 'MasterCustomerModel(id: $id, name: $name, phoneNumber: $phoneNumber, masterCustomerStatus: $masterCustomerStatus, ktpUrl: $ktpUrl, kkUrl: $kkUrl, bankName: $bankName, simulationUrl: $simulationUrl, simulationInfo: $simulationInfo, reviewInfo: $reviewInfo, skUrl: $skUrl, akteUrl: $akteUrl, closedProofUrl: $closedProofUrl)';
}


}

/// @nodoc
abstract mixin class $MasterCustomerModelCopyWith<$Res>  {
  factory $MasterCustomerModelCopyWith(MasterCustomerModel value, $Res Function(MasterCustomerModel) _then) = _$MasterCustomerModelCopyWithImpl;
@useResult
$Res call({
 String id, String name,@JsonKey(name: 'phone_number') String phoneNumber,@JsonKey(name: 'master_customer_status') MasterCustomerStatus masterCustomerStatus,@JsonKey(name: 'ktp_url') String? ktpUrl,@JsonKey(name: 'kk_url') String? kkUrl,@JsonKey(name: 'bank_name') String? bankName,@JsonKey(name: 'simulation_url') String? simulationUrl,@JsonKey(name: 'simulation_info') String? simulationInfo,@JsonKey(name: 'review_info') String? reviewInfo,@JsonKey(name: 'sk_url') String? skUrl,@JsonKey(name: 'akte_url') String? akteUrl,@JsonKey(name: 'closed_proof_url') String? closedProofUrl
});




}
/// @nodoc
class _$MasterCustomerModelCopyWithImpl<$Res>
    implements $MasterCustomerModelCopyWith<$Res> {
  _$MasterCustomerModelCopyWithImpl(this._self, this._then);

  final MasterCustomerModel _self;
  final $Res Function(MasterCustomerModel) _then;

/// Create a copy of MasterCustomerModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? phoneNumber = null,Object? masterCustomerStatus = null,Object? ktpUrl = freezed,Object? kkUrl = freezed,Object? bankName = freezed,Object? simulationUrl = freezed,Object? simulationInfo = freezed,Object? reviewInfo = freezed,Object? skUrl = freezed,Object? akteUrl = freezed,Object? closedProofUrl = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,masterCustomerStatus: null == masterCustomerStatus ? _self.masterCustomerStatus : masterCustomerStatus // ignore: cast_nullable_to_non_nullable
as MasterCustomerStatus,ktpUrl: freezed == ktpUrl ? _self.ktpUrl : ktpUrl // ignore: cast_nullable_to_non_nullable
as String?,kkUrl: freezed == kkUrl ? _self.kkUrl : kkUrl // ignore: cast_nullable_to_non_nullable
as String?,bankName: freezed == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String?,simulationUrl: freezed == simulationUrl ? _self.simulationUrl : simulationUrl // ignore: cast_nullable_to_non_nullable
as String?,simulationInfo: freezed == simulationInfo ? _self.simulationInfo : simulationInfo // ignore: cast_nullable_to_non_nullable
as String?,reviewInfo: freezed == reviewInfo ? _self.reviewInfo : reviewInfo // ignore: cast_nullable_to_non_nullable
as String?,skUrl: freezed == skUrl ? _self.skUrl : skUrl // ignore: cast_nullable_to_non_nullable
as String?,akteUrl: freezed == akteUrl ? _self.akteUrl : akteUrl // ignore: cast_nullable_to_non_nullable
as String?,closedProofUrl: freezed == closedProofUrl ? _self.closedProofUrl : closedProofUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MasterCustomerModel].
extension MasterCustomerModelPatterns on MasterCustomerModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MasterCustomerModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MasterCustomerModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MasterCustomerModel value)  $default,){
final _that = this;
switch (_that) {
case _MasterCustomerModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MasterCustomerModel value)?  $default,){
final _that = this;
switch (_that) {
case _MasterCustomerModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name, @JsonKey(name: 'phone_number')  String phoneNumber, @JsonKey(name: 'master_customer_status')  MasterCustomerStatus masterCustomerStatus, @JsonKey(name: 'ktp_url')  String? ktpUrl, @JsonKey(name: 'kk_url')  String? kkUrl, @JsonKey(name: 'bank_name')  String? bankName, @JsonKey(name: 'simulation_url')  String? simulationUrl, @JsonKey(name: 'simulation_info')  String? simulationInfo, @JsonKey(name: 'review_info')  String? reviewInfo, @JsonKey(name: 'sk_url')  String? skUrl, @JsonKey(name: 'akte_url')  String? akteUrl, @JsonKey(name: 'closed_proof_url')  String? closedProofUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MasterCustomerModel() when $default != null:
return $default(_that.id,_that.name,_that.phoneNumber,_that.masterCustomerStatus,_that.ktpUrl,_that.kkUrl,_that.bankName,_that.simulationUrl,_that.simulationInfo,_that.reviewInfo,_that.skUrl,_that.akteUrl,_that.closedProofUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name, @JsonKey(name: 'phone_number')  String phoneNumber, @JsonKey(name: 'master_customer_status')  MasterCustomerStatus masterCustomerStatus, @JsonKey(name: 'ktp_url')  String? ktpUrl, @JsonKey(name: 'kk_url')  String? kkUrl, @JsonKey(name: 'bank_name')  String? bankName, @JsonKey(name: 'simulation_url')  String? simulationUrl, @JsonKey(name: 'simulation_info')  String? simulationInfo, @JsonKey(name: 'review_info')  String? reviewInfo, @JsonKey(name: 'sk_url')  String? skUrl, @JsonKey(name: 'akte_url')  String? akteUrl, @JsonKey(name: 'closed_proof_url')  String? closedProofUrl)  $default,) {final _that = this;
switch (_that) {
case _MasterCustomerModel():
return $default(_that.id,_that.name,_that.phoneNumber,_that.masterCustomerStatus,_that.ktpUrl,_that.kkUrl,_that.bankName,_that.simulationUrl,_that.simulationInfo,_that.reviewInfo,_that.skUrl,_that.akteUrl,_that.closedProofUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name, @JsonKey(name: 'phone_number')  String phoneNumber, @JsonKey(name: 'master_customer_status')  MasterCustomerStatus masterCustomerStatus, @JsonKey(name: 'ktp_url')  String? ktpUrl, @JsonKey(name: 'kk_url')  String? kkUrl, @JsonKey(name: 'bank_name')  String? bankName, @JsonKey(name: 'simulation_url')  String? simulationUrl, @JsonKey(name: 'simulation_info')  String? simulationInfo, @JsonKey(name: 'review_info')  String? reviewInfo, @JsonKey(name: 'sk_url')  String? skUrl, @JsonKey(name: 'akte_url')  String? akteUrl, @JsonKey(name: 'closed_proof_url')  String? closedProofUrl)?  $default,) {final _that = this;
switch (_that) {
case _MasterCustomerModel() when $default != null:
return $default(_that.id,_that.name,_that.phoneNumber,_that.masterCustomerStatus,_that.ktpUrl,_that.kkUrl,_that.bankName,_that.simulationUrl,_that.simulationInfo,_that.reviewInfo,_that.skUrl,_that.akteUrl,_that.closedProofUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MasterCustomerModel implements MasterCustomerModel {
  const _MasterCustomerModel({required this.id, required this.name, @JsonKey(name: 'phone_number') required this.phoneNumber, @JsonKey(name: 'master_customer_status') required this.masterCustomerStatus, @JsonKey(name: 'ktp_url') this.ktpUrl, @JsonKey(name: 'kk_url') this.kkUrl, @JsonKey(name: 'bank_name') this.bankName, @JsonKey(name: 'simulation_url') this.simulationUrl, @JsonKey(name: 'simulation_info') this.simulationInfo, @JsonKey(name: 'review_info') this.reviewInfo, @JsonKey(name: 'sk_url') this.skUrl, @JsonKey(name: 'akte_url') this.akteUrl, @JsonKey(name: 'closed_proof_url') this.closedProofUrl});
  factory _MasterCustomerModel.fromJson(Map<String, dynamic> json) => _$MasterCustomerModelFromJson(json);

@override final  String id;
@override final  String name;
@override@JsonKey(name: 'phone_number') final  String phoneNumber;
@override@JsonKey(name: 'master_customer_status') final  MasterCustomerStatus masterCustomerStatus;
@override@JsonKey(name: 'ktp_url') final  String? ktpUrl;
@override@JsonKey(name: 'kk_url') final  String? kkUrl;
@override@JsonKey(name: 'bank_name') final  String? bankName;
@override@JsonKey(name: 'simulation_url') final  String? simulationUrl;
@override@JsonKey(name: 'simulation_info') final  String? simulationInfo;
@override@JsonKey(name: 'review_info') final  String? reviewInfo;
@override@JsonKey(name: 'sk_url') final  String? skUrl;
@override@JsonKey(name: 'akte_url') final  String? akteUrl;
@override@JsonKey(name: 'closed_proof_url') final  String? closedProofUrl;

/// Create a copy of MasterCustomerModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MasterCustomerModelCopyWith<_MasterCustomerModel> get copyWith => __$MasterCustomerModelCopyWithImpl<_MasterCustomerModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MasterCustomerModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MasterCustomerModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.masterCustomerStatus, masterCustomerStatus) || other.masterCustomerStatus == masterCustomerStatus)&&(identical(other.ktpUrl, ktpUrl) || other.ktpUrl == ktpUrl)&&(identical(other.kkUrl, kkUrl) || other.kkUrl == kkUrl)&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.simulationUrl, simulationUrl) || other.simulationUrl == simulationUrl)&&(identical(other.simulationInfo, simulationInfo) || other.simulationInfo == simulationInfo)&&(identical(other.reviewInfo, reviewInfo) || other.reviewInfo == reviewInfo)&&(identical(other.skUrl, skUrl) || other.skUrl == skUrl)&&(identical(other.akteUrl, akteUrl) || other.akteUrl == akteUrl)&&(identical(other.closedProofUrl, closedProofUrl) || other.closedProofUrl == closedProofUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,phoneNumber,masterCustomerStatus,ktpUrl,kkUrl,bankName,simulationUrl,simulationInfo,reviewInfo,skUrl,akteUrl,closedProofUrl);

@override
String toString() {
  return 'MasterCustomerModel(id: $id, name: $name, phoneNumber: $phoneNumber, masterCustomerStatus: $masterCustomerStatus, ktpUrl: $ktpUrl, kkUrl: $kkUrl, bankName: $bankName, simulationUrl: $simulationUrl, simulationInfo: $simulationInfo, reviewInfo: $reviewInfo, skUrl: $skUrl, akteUrl: $akteUrl, closedProofUrl: $closedProofUrl)';
}


}

/// @nodoc
abstract mixin class _$MasterCustomerModelCopyWith<$Res> implements $MasterCustomerModelCopyWith<$Res> {
  factory _$MasterCustomerModelCopyWith(_MasterCustomerModel value, $Res Function(_MasterCustomerModel) _then) = __$MasterCustomerModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name,@JsonKey(name: 'phone_number') String phoneNumber,@JsonKey(name: 'master_customer_status') MasterCustomerStatus masterCustomerStatus,@JsonKey(name: 'ktp_url') String? ktpUrl,@JsonKey(name: 'kk_url') String? kkUrl,@JsonKey(name: 'bank_name') String? bankName,@JsonKey(name: 'simulation_url') String? simulationUrl,@JsonKey(name: 'simulation_info') String? simulationInfo,@JsonKey(name: 'review_info') String? reviewInfo,@JsonKey(name: 'sk_url') String? skUrl,@JsonKey(name: 'akte_url') String? akteUrl,@JsonKey(name: 'closed_proof_url') String? closedProofUrl
});




}
/// @nodoc
class __$MasterCustomerModelCopyWithImpl<$Res>
    implements _$MasterCustomerModelCopyWith<$Res> {
  __$MasterCustomerModelCopyWithImpl(this._self, this._then);

  final _MasterCustomerModel _self;
  final $Res Function(_MasterCustomerModel) _then;

/// Create a copy of MasterCustomerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? phoneNumber = null,Object? masterCustomerStatus = null,Object? ktpUrl = freezed,Object? kkUrl = freezed,Object? bankName = freezed,Object? simulationUrl = freezed,Object? simulationInfo = freezed,Object? reviewInfo = freezed,Object? skUrl = freezed,Object? akteUrl = freezed,Object? closedProofUrl = freezed,}) {
  return _then(_MasterCustomerModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,masterCustomerStatus: null == masterCustomerStatus ? _self.masterCustomerStatus : masterCustomerStatus // ignore: cast_nullable_to_non_nullable
as MasterCustomerStatus,ktpUrl: freezed == ktpUrl ? _self.ktpUrl : ktpUrl // ignore: cast_nullable_to_non_nullable
as String?,kkUrl: freezed == kkUrl ? _self.kkUrl : kkUrl // ignore: cast_nullable_to_non_nullable
as String?,bankName: freezed == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String?,simulationUrl: freezed == simulationUrl ? _self.simulationUrl : simulationUrl // ignore: cast_nullable_to_non_nullable
as String?,simulationInfo: freezed == simulationInfo ? _self.simulationInfo : simulationInfo // ignore: cast_nullable_to_non_nullable
as String?,reviewInfo: freezed == reviewInfo ? _self.reviewInfo : reviewInfo // ignore: cast_nullable_to_non_nullable
as String?,skUrl: freezed == skUrl ? _self.skUrl : skUrl // ignore: cast_nullable_to_non_nullable
as String?,akteUrl: freezed == akteUrl ? _self.akteUrl : akteUrl // ignore: cast_nullable_to_non_nullable
as String?,closedProofUrl: freezed == closedProofUrl ? _self.closedProofUrl : closedProofUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
