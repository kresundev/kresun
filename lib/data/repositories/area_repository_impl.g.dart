// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'area_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$areasByRegionHash() => r'3ed6d0c156b299a8d5cb787f4efc0e8f7f6c9b07';

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

/// See also [areasByRegion].
@ProviderFor(areasByRegion)
const areasByRegionProvider = AreasByRegionFamily();

/// See also [areasByRegion].
class AreasByRegionFamily extends Family<AsyncValue<List<AreaModel>>> {
  /// See also [areasByRegion].
  const AreasByRegionFamily();

  /// See also [areasByRegion].
  AreasByRegionProvider call(String regionId) {
    return AreasByRegionProvider(regionId);
  }

  @override
  AreasByRegionProvider getProviderOverride(
    covariant AreasByRegionProvider provider,
  ) {
    return call(provider.regionId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'areasByRegionProvider';
}

/// See also [areasByRegion].
class AreasByRegionProvider extends AutoDisposeFutureProvider<List<AreaModel>> {
  /// See also [areasByRegion].
  AreasByRegionProvider(String regionId)
    : this._internal(
        (ref) => areasByRegion(ref as AreasByRegionRef, regionId),
        from: areasByRegionProvider,
        name: r'areasByRegionProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$areasByRegionHash,
        dependencies: AreasByRegionFamily._dependencies,
        allTransitiveDependencies:
            AreasByRegionFamily._allTransitiveDependencies,
        regionId: regionId,
      );

  AreasByRegionProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.regionId,
  }) : super.internal();

  final String regionId;

  @override
  Override overrideWith(
    FutureOr<List<AreaModel>> Function(AreasByRegionRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AreasByRegionProvider._internal(
        (ref) => create(ref as AreasByRegionRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        regionId: regionId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<AreaModel>> createElement() {
    return _AreasByRegionProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AreasByRegionProvider && other.regionId == regionId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, regionId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin AreasByRegionRef on AutoDisposeFutureProviderRef<List<AreaModel>> {
  /// The parameter `regionId` of this provider.
  String get regionId;
}

class _AreasByRegionProviderElement
    extends AutoDisposeFutureProviderElement<List<AreaModel>>
    with AreasByRegionRef {
  _AreasByRegionProviderElement(super.provider);

  @override
  String get regionId => (origin as AreasByRegionProvider).regionId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
