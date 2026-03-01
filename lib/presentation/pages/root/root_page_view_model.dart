import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../data/repositories/auth_repository_impl.dart';
import '../../providers/current_user_provider.dart';
import 'root_page_state.dart';

part 'root_page_view_model.g.dart';

@riverpod
class RootPageViewModel extends _$RootPageViewModel {
  @override
  Future<RootPageState> build() async {
    final userId = ref.read(authRepositoryProvider).getSessionUserId();

    if (userId == null) {
      return const RootPageState(status: RootStatus.unauthenticated);
    }

    try {
      final user = await ref.read(authRepositoryProvider).getCurrentUser(userId);
      ref.read(currentUserProvider.notifier).setUser(user);
      return const RootPageState(status: RootStatus.authenticated);
    } catch (_) {
      return const RootPageState(status: RootStatus.unauthenticated);
    }
  }
}
