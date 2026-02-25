import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'home_page_state.dart';

part 'home_page_view_model.g.dart';

@riverpod
class HomePageViewModel extends _$HomePageViewModel {
  @override
  HomePageState build() => const HomePageState();

  void onNavTapped(int index) => state = state.copyWith(selectedNavIndex: index);
}
