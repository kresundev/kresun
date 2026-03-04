// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'master_customers_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MasterCustomersListState {

 List<MasterCustomerModel> get customers; String get query; int get page; bool get hasMore; bool get isSearching; bool get isLoadingMore;
/// Create a copy of MasterCustomersListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MasterCustomersListStateCopyWith<MasterCustomersListState> get copyWith => _$MasterCustomersListStateCopyWithImpl<MasterCustomersListState>(this as MasterCustomersListState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MasterCustomersListState&&const DeepCollectionEquality().equals(other.customers, customers)&&(identical(other.query, query) || other.query == query)&&(identical(other.page, page) || other.page == page)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.isSearching, isSearching) || other.isSearching == isSearching)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(customers),query,page,hasMore,isSearching,isLoadingMore);

@override
String toString() {
  return 'MasterCustomersListState(customers: $customers, query: $query, page: $page, hasMore: $hasMore, isSearching: $isSearching, isLoadingMore: $isLoadingMore)';
}


}

/// @nodoc
abstract mixin class $MasterCustomersListStateCopyWith<$Res>  {
  factory $MasterCustomersListStateCopyWith(MasterCustomersListState value, $Res Function(MasterCustomersListState) _then) = _$MasterCustomersListStateCopyWithImpl;
@useResult
$Res call({
 List<MasterCustomerModel> customers, String query, int page, bool hasMore, bool isSearching, bool isLoadingMore
});




}
/// @nodoc
class _$MasterCustomersListStateCopyWithImpl<$Res>
    implements $MasterCustomersListStateCopyWith<$Res> {
  _$MasterCustomersListStateCopyWithImpl(this._self, this._then);

  final MasterCustomersListState _self;
  final $Res Function(MasterCustomersListState) _then;

/// Create a copy of MasterCustomersListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? customers = null,Object? query = null,Object? page = null,Object? hasMore = null,Object? isSearching = null,Object? isLoadingMore = null,}) {
  return _then(_self.copyWith(
customers: null == customers ? _self.customers : customers // ignore: cast_nullable_to_non_nullable
as List<MasterCustomerModel>,query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,isSearching: null == isSearching ? _self.isSearching : isSearching // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [MasterCustomersListState].
extension MasterCustomersListStatePatterns on MasterCustomersListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MasterCustomersListState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MasterCustomersListState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MasterCustomersListState value)  $default,){
final _that = this;
switch (_that) {
case _MasterCustomersListState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MasterCustomersListState value)?  $default,){
final _that = this;
switch (_that) {
case _MasterCustomersListState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<MasterCustomerModel> customers,  String query,  int page,  bool hasMore,  bool isSearching,  bool isLoadingMore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MasterCustomersListState() when $default != null:
return $default(_that.customers,_that.query,_that.page,_that.hasMore,_that.isSearching,_that.isLoadingMore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<MasterCustomerModel> customers,  String query,  int page,  bool hasMore,  bool isSearching,  bool isLoadingMore)  $default,) {final _that = this;
switch (_that) {
case _MasterCustomersListState():
return $default(_that.customers,_that.query,_that.page,_that.hasMore,_that.isSearching,_that.isLoadingMore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<MasterCustomerModel> customers,  String query,  int page,  bool hasMore,  bool isSearching,  bool isLoadingMore)?  $default,) {final _that = this;
switch (_that) {
case _MasterCustomersListState() when $default != null:
return $default(_that.customers,_that.query,_that.page,_that.hasMore,_that.isSearching,_that.isLoadingMore);case _:
  return null;

}
}

}

/// @nodoc


class _MasterCustomersListState implements MasterCustomersListState {
  const _MasterCustomersListState({final  List<MasterCustomerModel> customers = const [], this.query = '', this.page = 0, this.hasMore = true, this.isSearching = false, this.isLoadingMore = false}): _customers = customers;
  

 final  List<MasterCustomerModel> _customers;
@override@JsonKey() List<MasterCustomerModel> get customers {
  if (_customers is EqualUnmodifiableListView) return _customers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_customers);
}

@override@JsonKey() final  String query;
@override@JsonKey() final  int page;
@override@JsonKey() final  bool hasMore;
@override@JsonKey() final  bool isSearching;
@override@JsonKey() final  bool isLoadingMore;

/// Create a copy of MasterCustomersListState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MasterCustomersListStateCopyWith<_MasterCustomersListState> get copyWith => __$MasterCustomersListStateCopyWithImpl<_MasterCustomersListState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MasterCustomersListState&&const DeepCollectionEquality().equals(other._customers, _customers)&&(identical(other.query, query) || other.query == query)&&(identical(other.page, page) || other.page == page)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.isSearching, isSearching) || other.isSearching == isSearching)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_customers),query,page,hasMore,isSearching,isLoadingMore);

@override
String toString() {
  return 'MasterCustomersListState(customers: $customers, query: $query, page: $page, hasMore: $hasMore, isSearching: $isSearching, isLoadingMore: $isLoadingMore)';
}


}

/// @nodoc
abstract mixin class _$MasterCustomersListStateCopyWith<$Res> implements $MasterCustomersListStateCopyWith<$Res> {
  factory _$MasterCustomersListStateCopyWith(_MasterCustomersListState value, $Res Function(_MasterCustomersListState) _then) = __$MasterCustomersListStateCopyWithImpl;
@override @useResult
$Res call({
 List<MasterCustomerModel> customers, String query, int page, bool hasMore, bool isSearching, bool isLoadingMore
});




}
/// @nodoc
class __$MasterCustomersListStateCopyWithImpl<$Res>
    implements _$MasterCustomersListStateCopyWith<$Res> {
  __$MasterCustomersListStateCopyWithImpl(this._self, this._then);

  final _MasterCustomersListState _self;
  final $Res Function(_MasterCustomersListState) _then;

/// Create a copy of MasterCustomersListState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? customers = null,Object? query = null,Object? page = null,Object? hasMore = null,Object? isSearching = null,Object? isLoadingMore = null,}) {
  return _then(_MasterCustomersListState(
customers: null == customers ? _self._customers : customers // ignore: cast_nullable_to_non_nullable
as List<MasterCustomerModel>,query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,isSearching: null == isSearching ? _self.isSearching : isSearching // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
