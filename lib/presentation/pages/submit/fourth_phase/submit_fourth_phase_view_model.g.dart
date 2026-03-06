// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submit_fourth_phase_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$submitFourthPhaseViewModelHash() =>
    r'518d32b62cf44b64b798496fabca7ce8f96922b5';

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

abstract class _$SubmitFourthPhaseViewModel
    extends BuildlessAutoDisposeAsyncNotifier<SubmitFourthPhaseState> {
  late final String customerId;

  FutureOr<SubmitFourthPhaseState> build(String customerId);
}

/// See also [SubmitFourthPhaseViewModel].
@ProviderFor(SubmitFourthPhaseViewModel)
const submitFourthPhaseViewModelProvider = SubmitFourthPhaseViewModelFamily();

/// See also [SubmitFourthPhaseViewModel].
class SubmitFourthPhaseViewModelFamily
    extends Family<AsyncValue<SubmitFourthPhaseState>> {
  /// See also [SubmitFourthPhaseViewModel].
  const SubmitFourthPhaseViewModelFamily();

  /// See also [SubmitFourthPhaseViewModel].
  SubmitFourthPhaseViewModelProvider call(String customerId) {
    return SubmitFourthPhaseViewModelProvider(customerId);
  }

  @override
  SubmitFourthPhaseViewModelProvider getProviderOverride(
    covariant SubmitFourthPhaseViewModelProvider provider,
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
  String? get name => r'submitFourthPhaseViewModelProvider';
}

/// See also [SubmitFourthPhaseViewModel].
class SubmitFourthPhaseViewModelProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          SubmitFourthPhaseViewModel,
          SubmitFourthPhaseState
        > {
  /// See also [SubmitFourthPhaseViewModel].
  SubmitFourthPhaseViewModelProvider(String customerId)
    : this._internal(
        () => SubmitFourthPhaseViewModel()..customerId = customerId,
        from: submitFourthPhaseViewModelProvider,
        name: r'submitFourthPhaseViewModelProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$submitFourthPhaseViewModelHash,
        dependencies: SubmitFourthPhaseViewModelFamily._dependencies,
        allTransitiveDependencies:
            SubmitFourthPhaseViewModelFamily._allTransitiveDependencies,
        customerId: customerId,
      );

  SubmitFourthPhaseViewModelProvider._internal(
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
  FutureOr<SubmitFourthPhaseState> runNotifierBuild(
    covariant SubmitFourthPhaseViewModel notifier,
  ) {
    return notifier.build(customerId);
  }

  @override
  Override overrideWith(SubmitFourthPhaseViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: SubmitFourthPhaseViewModelProvider._internal(
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
    SubmitFourthPhaseViewModel,
    SubmitFourthPhaseState
  >
  createElement() {
    return _SubmitFourthPhaseViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SubmitFourthPhaseViewModelProvider &&
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
mixin SubmitFourthPhaseViewModelRef
    on AutoDisposeAsyncNotifierProviderRef<SubmitFourthPhaseState> {
  /// The parameter `customerId` of this provider.
  String get customerId;
}

class _SubmitFourthPhaseViewModelProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          SubmitFourthPhaseViewModel,
          SubmitFourthPhaseState
        >
    with SubmitFourthPhaseViewModelRef {
  _SubmitFourthPhaseViewModelProviderElement(super.provider);

  @override
  String get customerId =>
      (origin as SubmitFourthPhaseViewModelProvider).customerId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
