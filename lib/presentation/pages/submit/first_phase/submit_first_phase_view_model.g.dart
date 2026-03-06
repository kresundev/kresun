// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submit_first_phase_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$submitFirstPhaseViewModelHash() =>
    r'85bdac5f2aac3d08f919fec671e4683b3e7c9afb';

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

abstract class _$SubmitFirstPhaseViewModel
    extends BuildlessAutoDisposeNotifier<SubmitFirstPhaseState> {
  late final MasterCustomerModel? masterCustomer;

  SubmitFirstPhaseState build(MasterCustomerModel? masterCustomer);
}

/// See also [SubmitFirstPhaseViewModel].
@ProviderFor(SubmitFirstPhaseViewModel)
const submitFirstPhaseViewModelProvider = SubmitFirstPhaseViewModelFamily();

/// See also [SubmitFirstPhaseViewModel].
class SubmitFirstPhaseViewModelFamily extends Family<SubmitFirstPhaseState> {
  /// See also [SubmitFirstPhaseViewModel].
  const SubmitFirstPhaseViewModelFamily();

  /// See also [SubmitFirstPhaseViewModel].
  SubmitFirstPhaseViewModelProvider call(MasterCustomerModel? masterCustomer) {
    return SubmitFirstPhaseViewModelProvider(masterCustomer);
  }

  @override
  SubmitFirstPhaseViewModelProvider getProviderOverride(
    covariant SubmitFirstPhaseViewModelProvider provider,
  ) {
    return call(provider.masterCustomer);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'submitFirstPhaseViewModelProvider';
}

/// See also [SubmitFirstPhaseViewModel].
class SubmitFirstPhaseViewModelProvider
    extends
        AutoDisposeNotifierProviderImpl<
          SubmitFirstPhaseViewModel,
          SubmitFirstPhaseState
        > {
  /// See also [SubmitFirstPhaseViewModel].
  SubmitFirstPhaseViewModelProvider(MasterCustomerModel? masterCustomer)
    : this._internal(
        () => SubmitFirstPhaseViewModel()..masterCustomer = masterCustomer,
        from: submitFirstPhaseViewModelProvider,
        name: r'submitFirstPhaseViewModelProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$submitFirstPhaseViewModelHash,
        dependencies: SubmitFirstPhaseViewModelFamily._dependencies,
        allTransitiveDependencies:
            SubmitFirstPhaseViewModelFamily._allTransitiveDependencies,
        masterCustomer: masterCustomer,
      );

  SubmitFirstPhaseViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.masterCustomer,
  }) : super.internal();

  final MasterCustomerModel? masterCustomer;

  @override
  SubmitFirstPhaseState runNotifierBuild(
    covariant SubmitFirstPhaseViewModel notifier,
  ) {
    return notifier.build(masterCustomer);
  }

  @override
  Override overrideWith(SubmitFirstPhaseViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: SubmitFirstPhaseViewModelProvider._internal(
        () => create()..masterCustomer = masterCustomer,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        masterCustomer: masterCustomer,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<
    SubmitFirstPhaseViewModel,
    SubmitFirstPhaseState
  >
  createElement() {
    return _SubmitFirstPhaseViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SubmitFirstPhaseViewModelProvider &&
        other.masterCustomer == masterCustomer;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, masterCustomer.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SubmitFirstPhaseViewModelRef
    on AutoDisposeNotifierProviderRef<SubmitFirstPhaseState> {
  /// The parameter `masterCustomer` of this provider.
  MasterCustomerModel? get masterCustomer;
}

class _SubmitFirstPhaseViewModelProviderElement
    extends
        AutoDisposeNotifierProviderElement<
          SubmitFirstPhaseViewModel,
          SubmitFirstPhaseState
        >
    with SubmitFirstPhaseViewModelRef {
  _SubmitFirstPhaseViewModelProviderElement(super.provider);

  @override
  MasterCustomerModel? get masterCustomer =>
      (origin as SubmitFirstPhaseViewModelProvider).masterCustomer;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
