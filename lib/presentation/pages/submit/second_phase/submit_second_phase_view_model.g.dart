// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submit_second_phase_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$submitSecondPhaseViewModelHash() =>
    r'a09ce8effcc5daa8e8a41cbdb719cb4ce3f16bdb';

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

abstract class _$SubmitSecondPhaseViewModel
    extends BuildlessAutoDisposeNotifier<SubmitSecondPhaseState> {
  late final String customerId;
  late final String customerName;

  SubmitSecondPhaseState build(String customerId, String customerName);
}

/// See also [SubmitSecondPhaseViewModel].
@ProviderFor(SubmitSecondPhaseViewModel)
const submitSecondPhaseViewModelProvider = SubmitSecondPhaseViewModelFamily();

/// See also [SubmitSecondPhaseViewModel].
class SubmitSecondPhaseViewModelFamily extends Family<SubmitSecondPhaseState> {
  /// See also [SubmitSecondPhaseViewModel].
  const SubmitSecondPhaseViewModelFamily();

  /// See also [SubmitSecondPhaseViewModel].
  SubmitSecondPhaseViewModelProvider call(
    String customerId,
    String customerName,
  ) {
    return SubmitSecondPhaseViewModelProvider(customerId, customerName);
  }

  @override
  SubmitSecondPhaseViewModelProvider getProviderOverride(
    covariant SubmitSecondPhaseViewModelProvider provider,
  ) {
    return call(provider.customerId, provider.customerName);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'submitSecondPhaseViewModelProvider';
}

/// See also [SubmitSecondPhaseViewModel].
class SubmitSecondPhaseViewModelProvider
    extends
        AutoDisposeNotifierProviderImpl<
          SubmitSecondPhaseViewModel,
          SubmitSecondPhaseState
        > {
  /// See also [SubmitSecondPhaseViewModel].
  SubmitSecondPhaseViewModelProvider(String customerId, String customerName)
    : this._internal(
        () => SubmitSecondPhaseViewModel()
          ..customerId = customerId
          ..customerName = customerName,
        from: submitSecondPhaseViewModelProvider,
        name: r'submitSecondPhaseViewModelProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$submitSecondPhaseViewModelHash,
        dependencies: SubmitSecondPhaseViewModelFamily._dependencies,
        allTransitiveDependencies:
            SubmitSecondPhaseViewModelFamily._allTransitiveDependencies,
        customerId: customerId,
        customerName: customerName,
      );

  SubmitSecondPhaseViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.customerId,
    required this.customerName,
  }) : super.internal();

  final String customerId;
  final String customerName;

  @override
  SubmitSecondPhaseState runNotifierBuild(
    covariant SubmitSecondPhaseViewModel notifier,
  ) {
    return notifier.build(customerId, customerName);
  }

  @override
  Override overrideWith(SubmitSecondPhaseViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: SubmitSecondPhaseViewModelProvider._internal(
        () => create()
          ..customerId = customerId
          ..customerName = customerName,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        customerId: customerId,
        customerName: customerName,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<
    SubmitSecondPhaseViewModel,
    SubmitSecondPhaseState
  >
  createElement() {
    return _SubmitSecondPhaseViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SubmitSecondPhaseViewModelProvider &&
        other.customerId == customerId &&
        other.customerName == customerName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, customerId.hashCode);
    hash = _SystemHash.combine(hash, customerName.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SubmitSecondPhaseViewModelRef
    on AutoDisposeNotifierProviderRef<SubmitSecondPhaseState> {
  /// The parameter `customerId` of this provider.
  String get customerId;

  /// The parameter `customerName` of this provider.
  String get customerName;
}

class _SubmitSecondPhaseViewModelProviderElement
    extends
        AutoDisposeNotifierProviderElement<
          SubmitSecondPhaseViewModel,
          SubmitSecondPhaseState
        >
    with SubmitSecondPhaseViewModelRef {
  _SubmitSecondPhaseViewModelProviderElement(super.provider);

  @override
  String get customerId =>
      (origin as SubmitSecondPhaseViewModelProvider).customerId;
  @override
  String get customerName =>
      (origin as SubmitSecondPhaseViewModelProvider).customerName;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
