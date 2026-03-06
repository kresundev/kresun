// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submit_closed_page_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$submitClosedPageViewModelHash() =>
    r'2b7731730d1399b92ec97632b440e355d4c093cc';

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

abstract class _$SubmitClosedPageViewModel
    extends BuildlessAutoDisposeAsyncNotifier<SubmitClosedPageState> {
  late final String customerId;

  FutureOr<SubmitClosedPageState> build(String customerId);
}

/// See also [SubmitClosedPageViewModel].
@ProviderFor(SubmitClosedPageViewModel)
const submitClosedPageViewModelProvider = SubmitClosedPageViewModelFamily();

/// See also [SubmitClosedPageViewModel].
class SubmitClosedPageViewModelFamily
    extends Family<AsyncValue<SubmitClosedPageState>> {
  /// See also [SubmitClosedPageViewModel].
  const SubmitClosedPageViewModelFamily();

  /// See also [SubmitClosedPageViewModel].
  SubmitClosedPageViewModelProvider call(String customerId) {
    return SubmitClosedPageViewModelProvider(customerId);
  }

  @override
  SubmitClosedPageViewModelProvider getProviderOverride(
    covariant SubmitClosedPageViewModelProvider provider,
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
  String? get name => r'submitClosedPageViewModelProvider';
}

/// See also [SubmitClosedPageViewModel].
class SubmitClosedPageViewModelProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          SubmitClosedPageViewModel,
          SubmitClosedPageState
        > {
  /// See also [SubmitClosedPageViewModel].
  SubmitClosedPageViewModelProvider(String customerId)
    : this._internal(
        () => SubmitClosedPageViewModel()..customerId = customerId,
        from: submitClosedPageViewModelProvider,
        name: r'submitClosedPageViewModelProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$submitClosedPageViewModelHash,
        dependencies: SubmitClosedPageViewModelFamily._dependencies,
        allTransitiveDependencies:
            SubmitClosedPageViewModelFamily._allTransitiveDependencies,
        customerId: customerId,
      );

  SubmitClosedPageViewModelProvider._internal(
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
  FutureOr<SubmitClosedPageState> runNotifierBuild(
    covariant SubmitClosedPageViewModel notifier,
  ) {
    return notifier.build(customerId);
  }

  @override
  Override overrideWith(SubmitClosedPageViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: SubmitClosedPageViewModelProvider._internal(
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
    SubmitClosedPageViewModel,
    SubmitClosedPageState
  >
  createElement() {
    return _SubmitClosedPageViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SubmitClosedPageViewModelProvider &&
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
mixin SubmitClosedPageViewModelRef
    on AutoDisposeAsyncNotifierProviderRef<SubmitClosedPageState> {
  /// The parameter `customerId` of this provider.
  String get customerId;
}

class _SubmitClosedPageViewModelProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          SubmitClosedPageViewModel,
          SubmitClosedPageState
        >
    with SubmitClosedPageViewModelRef {
  _SubmitClosedPageViewModelProviderElement(super.provider);

  @override
  String get customerId =>
      (origin as SubmitClosedPageViewModelProvider).customerId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
