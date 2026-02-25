import 'package:freezed_annotation/freezed_annotation.dart';

part 'root_page_state.freezed.dart';

enum RootStatus { checking, authenticated, unauthenticated }

@freezed
abstract class RootPageState with _$RootPageState {
  const factory RootPageState({
    @Default(RootStatus.checking) RootStatus status,
  }) = _RootPageState;
}
