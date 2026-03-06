// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CustomerModel {

 String get id; String get name;@JsonKey(name: 'created_by') String get createdBy;@JsonKey(name: 'master_customer_id') String? get masterCustomerId;@JsonKey(name: 'submit_status') SubmitStatus get submitStatus;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'ktp_url') String? get ktpUrl;@JsonKey(name: 'kk_url') String? get kkUrl;@JsonKey(name: 'bank_name') String? get bankName;@JsonKey(name: 'simulation_info') String? get simulationInfo;@JsonKey(name: 'review_info') String? get reviewInfo;@JsonKey(name: 'phone_number') String? get phoneNumber;@JsonKey(name: 'sk_url') String? get skUrl;@JsonKey(name: 'akte_url') String? get akteUrl;@JsonKey(name: 'closed_proof_url') String? get closedProofUrl;
/// Create a copy of CustomerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomerModelCopyWith<CustomerModel> get copyWith => _$CustomerModelCopyWithImpl<CustomerModel>(this as CustomerModel, _$identity);

  /// Serializes this CustomerModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomerModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.masterCustomerId, masterCustomerId) || other.masterCustomerId == masterCustomerId)&&(identical(other.submitStatus, submitStatus) || other.submitStatus == submitStatus)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.ktpUrl, ktpUrl) || other.ktpUrl == ktpUrl)&&(identical(other.kkUrl, kkUrl) || other.kkUrl == kkUrl)&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.simulationInfo, simulationInfo) || other.simulationInfo == simulationInfo)&&(identical(other.reviewInfo, reviewInfo) || other.reviewInfo == reviewInfo)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.skUrl, skUrl) || other.skUrl == skUrl)&&(identical(other.akteUrl, akteUrl) || other.akteUrl == akteUrl)&&(identical(other.closedProofUrl, closedProofUrl) || other.closedProofUrl == closedProofUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,createdBy,masterCustomerId,submitStatus,createdAt,ktpUrl,kkUrl,bankName,simulationInfo,reviewInfo,phoneNumber,skUrl,akteUrl,closedProofUrl);

@override
String toString() {
  return 'CustomerModel(id: $id, name: $name, createdBy: $createdBy, masterCustomerId: $masterCustomerId, submitStatus: $submitStatus, createdAt: $createdAt, ktpUrl: $ktpUrl, kkUrl: $kkUrl, bankName: $bankName, simulationInfo: $simulationInfo, reviewInfo: $reviewInfo, phoneNumber: $phoneNumber, skUrl: $skUrl, akteUrl: $akteUrl, closedProofUrl: $closedProofUrl)';
}


}

/// @nodoc
abstract mixin class $CustomerModelCopyWith<$Res>  {
  factory $CustomerModelCopyWith(CustomerModel value, $Res Function(CustomerModel) _then) = _$CustomerModelCopyWithImpl;
@useResult
$Res call({
 String id, String name,@JsonKey(name: 'created_by') String createdBy,@JsonKey(name: 'master_customer_id') String? masterCustomerId,@JsonKey(name: 'submit_status') SubmitStatus submitStatus,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'ktp_url') String? ktpUrl,@JsonKey(name: 'kk_url') String? kkUrl,@JsonKey(name: 'bank_name') String? bankName,@JsonKey(name: 'simulation_info') String? simulationInfo,@JsonKey(name: 'review_info') String? reviewInfo,@JsonKey(name: 'phone_number') String? phoneNumber,@JsonKey(name: 'sk_url') String? skUrl,@JsonKey(name: 'akte_url') String? akteUrl,@JsonKey(name: 'closed_proof_url') String? closedProofUrl
});




}
/// @nodoc
class _$CustomerModelCopyWithImpl<$Res>
    implements $CustomerModelCopyWith<$Res> {
  _$CustomerModelCopyWithImpl(this._self, this._then);

  final CustomerModel _self;
  final $Res Function(CustomerModel) _then;

/// Create a copy of CustomerModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? createdBy = null,Object? masterCustomerId = freezed,Object? submitStatus = null,Object? createdAt = freezed,Object? ktpUrl = freezed,Object? kkUrl = freezed,Object? bankName = freezed,Object? simulationInfo = freezed,Object? reviewInfo = freezed,Object? phoneNumber = freezed,Object? skUrl = freezed,Object? akteUrl = freezed,Object? closedProofUrl = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,masterCustomerId: freezed == masterCustomerId ? _self.masterCustomerId : masterCustomerId // ignore: cast_nullable_to_non_nullable
as String?,submitStatus: null == submitStatus ? _self.submitStatus : submitStatus // ignore: cast_nullable_to_non_nullable
as SubmitStatus,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,ktpUrl: freezed == ktpUrl ? _self.ktpUrl : ktpUrl // ignore: cast_nullable_to_non_nullable
as String?,kkUrl: freezed == kkUrl ? _self.kkUrl : kkUrl // ignore: cast_nullable_to_non_nullable
as String?,bankName: freezed == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String?,simulationInfo: freezed == simulationInfo ? _self.simulationInfo : simulationInfo // ignore: cast_nullable_to_non_nullable
as String?,reviewInfo: freezed == reviewInfo ? _self.reviewInfo : reviewInfo // ignore: cast_nullable_to_non_nullable
as String?,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,skUrl: freezed == skUrl ? _self.skUrl : skUrl // ignore: cast_nullable_to_non_nullable
as String?,akteUrl: freezed == akteUrl ? _self.akteUrl : akteUrl // ignore: cast_nullable_to_non_nullable
as String?,closedProofUrl: freezed == closedProofUrl ? _self.closedProofUrl : closedProofUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomerModel].
extension CustomerModelPatterns on CustomerModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomerModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomerModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomerModel value)  $default,){
final _that = this;
switch (_that) {
case _CustomerModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomerModel value)?  $default,){
final _that = this;
switch (_that) {
case _CustomerModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name, @JsonKey(name: 'created_by')  String createdBy, @JsonKey(name: 'master_customer_id')  String? masterCustomerId, @JsonKey(name: 'submit_status')  SubmitStatus submitStatus, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'ktp_url')  String? ktpUrl, @JsonKey(name: 'kk_url')  String? kkUrl, @JsonKey(name: 'bank_name')  String? bankName, @JsonKey(name: 'simulation_info')  String? simulationInfo, @JsonKey(name: 'review_info')  String? reviewInfo, @JsonKey(name: 'phone_number')  String? phoneNumber, @JsonKey(name: 'sk_url')  String? skUrl, @JsonKey(name: 'akte_url')  String? akteUrl, @JsonKey(name: 'closed_proof_url')  String? closedProofUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomerModel() when $default != null:
return $default(_that.id,_that.name,_that.createdBy,_that.masterCustomerId,_that.submitStatus,_that.createdAt,_that.ktpUrl,_that.kkUrl,_that.bankName,_that.simulationInfo,_that.reviewInfo,_that.phoneNumber,_that.skUrl,_that.akteUrl,_that.closedProofUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name, @JsonKey(name: 'created_by')  String createdBy, @JsonKey(name: 'master_customer_id')  String? masterCustomerId, @JsonKey(name: 'submit_status')  SubmitStatus submitStatus, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'ktp_url')  String? ktpUrl, @JsonKey(name: 'kk_url')  String? kkUrl, @JsonKey(name: 'bank_name')  String? bankName, @JsonKey(name: 'simulation_info')  String? simulationInfo, @JsonKey(name: 'review_info')  String? reviewInfo, @JsonKey(name: 'phone_number')  String? phoneNumber, @JsonKey(name: 'sk_url')  String? skUrl, @JsonKey(name: 'akte_url')  String? akteUrl, @JsonKey(name: 'closed_proof_url')  String? closedProofUrl)  $default,) {final _that = this;
switch (_that) {
case _CustomerModel():
return $default(_that.id,_that.name,_that.createdBy,_that.masterCustomerId,_that.submitStatus,_that.createdAt,_that.ktpUrl,_that.kkUrl,_that.bankName,_that.simulationInfo,_that.reviewInfo,_that.phoneNumber,_that.skUrl,_that.akteUrl,_that.closedProofUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name, @JsonKey(name: 'created_by')  String createdBy, @JsonKey(name: 'master_customer_id')  String? masterCustomerId, @JsonKey(name: 'submit_status')  SubmitStatus submitStatus, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'ktp_url')  String? ktpUrl, @JsonKey(name: 'kk_url')  String? kkUrl, @JsonKey(name: 'bank_name')  String? bankName, @JsonKey(name: 'simulation_info')  String? simulationInfo, @JsonKey(name: 'review_info')  String? reviewInfo, @JsonKey(name: 'phone_number')  String? phoneNumber, @JsonKey(name: 'sk_url')  String? skUrl, @JsonKey(name: 'akte_url')  String? akteUrl, @JsonKey(name: 'closed_proof_url')  String? closedProofUrl)?  $default,) {final _that = this;
switch (_that) {
case _CustomerModel() when $default != null:
return $default(_that.id,_that.name,_that.createdBy,_that.masterCustomerId,_that.submitStatus,_that.createdAt,_that.ktpUrl,_that.kkUrl,_that.bankName,_that.simulationInfo,_that.reviewInfo,_that.phoneNumber,_that.skUrl,_that.akteUrl,_that.closedProofUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CustomerModel implements CustomerModel {
  const _CustomerModel({required this.id, required this.name, @JsonKey(name: 'created_by') required this.createdBy, @JsonKey(name: 'master_customer_id') this.masterCustomerId, @JsonKey(name: 'submit_status') required this.submitStatus, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'ktp_url') this.ktpUrl, @JsonKey(name: 'kk_url') this.kkUrl, @JsonKey(name: 'bank_name') this.bankName, @JsonKey(name: 'simulation_info') this.simulationInfo, @JsonKey(name: 'review_info') this.reviewInfo, @JsonKey(name: 'phone_number') this.phoneNumber, @JsonKey(name: 'sk_url') this.skUrl, @JsonKey(name: 'akte_url') this.akteUrl, @JsonKey(name: 'closed_proof_url') this.closedProofUrl});
  factory _CustomerModel.fromJson(Map<String, dynamic> json) => _$CustomerModelFromJson(json);

@override final  String id;
@override final  String name;
@override@JsonKey(name: 'created_by') final  String createdBy;
@override@JsonKey(name: 'master_customer_id') final  String? masterCustomerId;
@override@JsonKey(name: 'submit_status') final  SubmitStatus submitStatus;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'ktp_url') final  String? ktpUrl;
@override@JsonKey(name: 'kk_url') final  String? kkUrl;
@override@JsonKey(name: 'bank_name') final  String? bankName;
@override@JsonKey(name: 'simulation_info') final  String? simulationInfo;
@override@JsonKey(name: 'review_info') final  String? reviewInfo;
@override@JsonKey(name: 'phone_number') final  String? phoneNumber;
@override@JsonKey(name: 'sk_url') final  String? skUrl;
@override@JsonKey(name: 'akte_url') final  String? akteUrl;
@override@JsonKey(name: 'closed_proof_url') final  String? closedProofUrl;

/// Create a copy of CustomerModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomerModelCopyWith<_CustomerModel> get copyWith => __$CustomerModelCopyWithImpl<_CustomerModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomerModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomerModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.masterCustomerId, masterCustomerId) || other.masterCustomerId == masterCustomerId)&&(identical(other.submitStatus, submitStatus) || other.submitStatus == submitStatus)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.ktpUrl, ktpUrl) || other.ktpUrl == ktpUrl)&&(identical(other.kkUrl, kkUrl) || other.kkUrl == kkUrl)&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.simulationInfo, simulationInfo) || other.simulationInfo == simulationInfo)&&(identical(other.reviewInfo, reviewInfo) || other.reviewInfo == reviewInfo)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.skUrl, skUrl) || other.skUrl == skUrl)&&(identical(other.akteUrl, akteUrl) || other.akteUrl == akteUrl)&&(identical(other.closedProofUrl, closedProofUrl) || other.closedProofUrl == closedProofUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,createdBy,masterCustomerId,submitStatus,createdAt,ktpUrl,kkUrl,bankName,simulationInfo,reviewInfo,phoneNumber,skUrl,akteUrl,closedProofUrl);

@override
String toString() {
  return 'CustomerModel(id: $id, name: $name, createdBy: $createdBy, masterCustomerId: $masterCustomerId, submitStatus: $submitStatus, createdAt: $createdAt, ktpUrl: $ktpUrl, kkUrl: $kkUrl, bankName: $bankName, simulationInfo: $simulationInfo, reviewInfo: $reviewInfo, phoneNumber: $phoneNumber, skUrl: $skUrl, akteUrl: $akteUrl, closedProofUrl: $closedProofUrl)';
}


}

/// @nodoc
abstract mixin class _$CustomerModelCopyWith<$Res> implements $CustomerModelCopyWith<$Res> {
  factory _$CustomerModelCopyWith(_CustomerModel value, $Res Function(_CustomerModel) _then) = __$CustomerModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name,@JsonKey(name: 'created_by') String createdBy,@JsonKey(name: 'master_customer_id') String? masterCustomerId,@JsonKey(name: 'submit_status') SubmitStatus submitStatus,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'ktp_url') String? ktpUrl,@JsonKey(name: 'kk_url') String? kkUrl,@JsonKey(name: 'bank_name') String? bankName,@JsonKey(name: 'simulation_info') String? simulationInfo,@JsonKey(name: 'review_info') String? reviewInfo,@JsonKey(name: 'phone_number') String? phoneNumber,@JsonKey(name: 'sk_url') String? skUrl,@JsonKey(name: 'akte_url') String? akteUrl,@JsonKey(name: 'closed_proof_url') String? closedProofUrl
});




}
/// @nodoc
class __$CustomerModelCopyWithImpl<$Res>
    implements _$CustomerModelCopyWith<$Res> {
  __$CustomerModelCopyWithImpl(this._self, this._then);

  final _CustomerModel _self;
  final $Res Function(_CustomerModel) _then;

/// Create a copy of CustomerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? createdBy = null,Object? masterCustomerId = freezed,Object? submitStatus = null,Object? createdAt = freezed,Object? ktpUrl = freezed,Object? kkUrl = freezed,Object? bankName = freezed,Object? simulationInfo = freezed,Object? reviewInfo = freezed,Object? phoneNumber = freezed,Object? skUrl = freezed,Object? akteUrl = freezed,Object? closedProofUrl = freezed,}) {
  return _then(_CustomerModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,masterCustomerId: freezed == masterCustomerId ? _self.masterCustomerId : masterCustomerId // ignore: cast_nullable_to_non_nullable
as String?,submitStatus: null == submitStatus ? _self.submitStatus : submitStatus // ignore: cast_nullable_to_non_nullable
as SubmitStatus,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,ktpUrl: freezed == ktpUrl ? _self.ktpUrl : ktpUrl // ignore: cast_nullable_to_non_nullable
as String?,kkUrl: freezed == kkUrl ? _self.kkUrl : kkUrl // ignore: cast_nullable_to_non_nullable
as String?,bankName: freezed == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String?,simulationInfo: freezed == simulationInfo ? _self.simulationInfo : simulationInfo // ignore: cast_nullable_to_non_nullable
as String?,reviewInfo: freezed == reviewInfo ? _self.reviewInfo : reviewInfo // ignore: cast_nullable_to_non_nullable
as String?,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,skUrl: freezed == skUrl ? _self.skUrl : skUrl // ignore: cast_nullable_to_non_nullable
as String?,akteUrl: freezed == akteUrl ? _self.akteUrl : akteUrl // ignore: cast_nullable_to_non_nullable
as String?,closedProofUrl: freezed == closedProofUrl ? _self.closedProofUrl : closedProofUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
