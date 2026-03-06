// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submit_fifth_phase_page_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$submitFifthPhasePageViewModelHash() =>
    r'e7ac8b42f531d0fc5d45d81f88de6b2f4b646e09';

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

abstract class _$SubmitFifthPhasePageViewModel
    extends BuildlessAutoDisposeAsyncNotifier<SubmitFifthPhasePageState> {
  late final String customerId;

  FutureOr<SubmitFifthPhasePageState> build(String customerId);
}

/// See also [SubmitFifthPhasePageViewModel].
@ProviderFor(SubmitFifthPhasePageViewModel)
const submitFifthPhasePageViewModelProvider =
    SubmitFifthPhasePageViewModelFamily();

/// See also [SubmitFifthPhasePageViewModel].
class SubmitFifthPhasePageViewModelFamily
    extends Family<AsyncValue<SubmitFifthPhasePageState>> {
  /// See also [SubmitFifthPhasePageViewModel].
  const SubmitFifthPhasePageViewModelFamily();

  /// See also [SubmitFifthPhasePageViewModel].
  SubmitFifthPhasePageViewModelProvider call(String customerId) {
    return SubmitFifthPhasePageViewModelProvider(customerId);
  }

  @override
  SubmitFifthPhasePageViewModelProvider getProviderOverride(
    covariant SubmitFifthPhasePageViewModelProvider provider,
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
  String? get name => r'submitFifthPhasePageViewModelProvider';
}

/// See also [SubmitFifthPhasePageViewModel].
class SubmitFifthPhasePageViewModelProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          SubmitFifthPhasePageViewModel,
          SubmitFifthPhasePageState
        > {
  /// See also [SubmitFifthPhasePageViewModel].
  SubmitFifthPhasePageViewModelProvider(String customerId)
    : this._internal(
        () => SubmitFifthPhasePageViewModel()..customerId = customerId,
        from: submitFifthPhasePageViewModelProvider,
        name: r'submitFifthPhasePageViewModelProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$submitFifthPhasePageViewModelHash,
        dependencies: SubmitFifthPhasePageViewModelFamily._dependencies,
        allTransitiveDependencies:
            SubmitFifthPhasePageViewModelFamily._allTransitiveDependencies,
        customerId: customerId,
      );

  SubmitFifthPhasePageViewModelProvider._internal(
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
  FutureOr<SubmitFifthPhasePageState> runNotifierBuild(
    covariant SubmitFifthPhasePageViewModel notifier,
  ) {
    return notifier.build(customerId);
  }

  @override
  Override overrideWith(SubmitFifthPhasePageViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: SubmitFifthPhasePageViewModelProvider._internal(
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
    SubmitFifthPhasePageViewModel,
    SubmitFifthPhasePageState
  >
  createElement() {
    return _SubmitFifthPhasePageViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SubmitFifthPhasePageViewModelProvider &&
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
mixin SubmitFifthPhasePageViewModelRef
    on AutoDisposeAsyncNotifierProviderRef<SubmitFifthPhasePageState> {
  /// The parameter `customerId` of this provider.
  String get customerId;
}

class _SubmitFifthPhasePageViewModelProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          SubmitFifthPhasePageViewModel,
          SubmitFifthPhasePageState
        >
    with SubmitFifthPhasePageViewModelRef {
  _SubmitFifthPhasePageViewModelProviderElement(super.provider);

  @override
  String get customerId =>
      (origin as SubmitFifthPhasePageViewModelProvider).customerId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
