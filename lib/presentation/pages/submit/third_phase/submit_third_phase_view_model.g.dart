// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submit_third_phase_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$submitThirdPhaseViewModelHash() =>
    r'726debdb3ed02569b8c020114c1037ad6fb275c4';

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

abstract class _$SubmitThirdPhaseViewModel
    extends BuildlessAutoDisposeAsyncNotifier<SubmitThirdPhaseState> {
  late final String customerId;

  FutureOr<SubmitThirdPhaseState> build(String customerId);
}

/// See also [SubmitThirdPhaseViewModel].
@ProviderFor(SubmitThirdPhaseViewModel)
const submitThirdPhaseViewModelProvider = SubmitThirdPhaseViewModelFamily();

/// See also [SubmitThirdPhaseViewModel].
class SubmitThirdPhaseViewModelFamily
    extends Family<AsyncValue<SubmitThirdPhaseState>> {
  /// See also [SubmitThirdPhaseViewModel].
  const SubmitThirdPhaseViewModelFamily();

  /// See also [SubmitThirdPhaseViewModel].
  SubmitThirdPhaseViewModelProvider call(String customerId) {
    return SubmitThirdPhaseViewModelProvider(customerId);
  }

  @override
  SubmitThirdPhaseViewModelProvider getProviderOverride(
    covariant SubmitThirdPhaseViewModelProvider provider,
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
  String? get name => r'submitThirdPhaseViewModelProvider';
}

/// See also [SubmitThirdPhaseViewModel].
class SubmitThirdPhaseViewModelProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          SubmitThirdPhaseViewModel,
          SubmitThirdPhaseState
        > {
  /// See also [SubmitThirdPhaseViewModel].
  SubmitThirdPhaseViewModelProvider(String customerId)
    : this._internal(
        () => SubmitThirdPhaseViewModel()..customerId = customerId,
        from: submitThirdPhaseViewModelProvider,
        name: r'submitThirdPhaseViewModelProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$submitThirdPhaseViewModelHash,
        dependencies: SubmitThirdPhaseViewModelFamily._dependencies,
        allTransitiveDependencies:
            SubmitThirdPhaseViewModelFamily._allTransitiveDependencies,
        customerId: customerId,
      );

  SubmitThirdPhaseViewModelProvider._internal(
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
  FutureOr<SubmitThirdPhaseState> runNotifierBuild(
    covariant SubmitThirdPhaseViewModel notifier,
  ) {
    return notifier.build(customerId);
  }

  @override
  Override overrideWith(SubmitThirdPhaseViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: SubmitThirdPhaseViewModelProvider._internal(
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
    SubmitThirdPhaseViewModel,
    SubmitThirdPhaseState
  >
  createElement() {
    return _SubmitThirdPhaseViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SubmitThirdPhaseViewModelProvider &&
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
mixin SubmitThirdPhaseViewModelRef
    on AutoDisposeAsyncNotifierProviderRef<SubmitThirdPhaseState> {
  /// The parameter `customerId` of this provider.
  String get customerId;
}

class _SubmitThirdPhaseViewModelProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          SubmitThirdPhaseViewModel,
          SubmitThirdPhaseState
        >
    with SubmitThirdPhaseViewModelRef {
  _SubmitThirdPhaseViewModelProviderElement(super.provider);

  @override
  String get customerId =>
      (origin as SubmitThirdPhaseViewModelProvider).customerId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
