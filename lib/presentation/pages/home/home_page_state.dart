import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_page_state.freezed.dart';

@freezed
abstract class HomePageState with _$HomePageState {
  const factory HomePageState({
    @Default(1) int selectedNavIndex,
  }) = _HomePageState;
}
