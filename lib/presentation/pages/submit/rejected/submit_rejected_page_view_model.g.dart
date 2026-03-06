// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submit_rejected_page_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$submitRejectedPageViewModelHash() =>
    r'6902a9ba4fac7b6d867ed157499d575209ddf66f';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$SubmitRejectedPageViewModel
    extends BuildlessAutoDisposeAsyncNotifier<SubmitRejectedPageState> {
  late final String customerId;

  FutureOr<SubmitRejectedPageState> build(String customerId);
}

/// See also [SubmitRejectedPageViewModel].
@ProviderFor(SubmitRejectedPageViewModel)
const submitRejectedPageViewModelProvider = SubmitRejectedPageViewModelFamily();

/// See also [SubmitRejectedPageViewModel].
class SubmitRejectedPageViewModelFamily
    extends Family<AsyncValue<SubmitRejectedPageState>> {
  /// See also [SubmitRejectedPageViewModel].
  const SubmitRejectedPageViewModelFamily();

  /// See also [SubmitRejectedPageViewModel].
  SubmitRejectedPageViewModelProvider call(String customerId) {
    return SubmitRejectedPageViewModelProvider(customerId);
  }

  @override
  SubmitRejectedPageViewModelProvider getProviderOverride(
    covariant SubmitRejectedPageViewModelProvider provider,
  ) {
    return call(provider.customerId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'submitRejectedPageViewModelProvider';
}

/// See also [SubmitRejectedPageViewModel].
class SubmitRejectedPageViewModelProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          SubmitRejectedPageViewModel,
          SubmitRejectedPageState
        > {
  /// See also [SubmitRejectedPageViewModel].
  SubmitRejectedPageViewModelProvider(String customerId)
    : this._internal(
        () => SubmitRejectedPageViewModel()..customerId = customerId,
        from: submitRejectedPageViewModelProvider,
        name: r'submitRejectedPageViewModelProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$submitRejectedPageViewModelHash,
        dependencies: SubmitRejectedPageViewModelFamily._dependencies,
        allTransitiveDependencies:
            SubmitRejectedPageViewModelFamily._allTransitiveDependencies,
        customerId: customerId,
      );

  SubmitRejectedPageViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.customerId,
  }) : super.internal();

  final String customerId;

  @override
  FutureOr<SubmitRejectedPageState> runNotifierBuild(
    covariant SubmitRejectedPageViewModel notifier,
  ) {
    return notifier.build(customerId);
  }

  @override
  Override overrideWith(SubmitRejectedPageViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: SubmitRejectedPageViewModelProvider._internal(
        () => create()..customerId = customerId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        customerId: customerId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<
    SubmitRejectedPageViewModel,
    SubmitRejectedPageState
  >
  createElement() {
    return _SubmitRejectedPageViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SubmitRejectedPageViewModelProvider &&
        other.customerId == customerId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, customerId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SubmitRejectedPageViewModelRef
    on AutoDisposeAsyncNotifierProviderRef<SubmitRejectedPageState> {
  /// The parameter `customerId` of this provider.
  String get customerId;
}

class _SubmitRejectedPageViewModelProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          SubmitRejectedPageViewModel,
          SubmitRejectedPageState
        >
    with SubmitRejectedPageViewModelRef {
  _SubmitRejectedPageViewModelProviderElement(super.provider);

  @override
  String get customerId =>
      (origin as SubmitRejectedPageViewModelProvider).customerId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
