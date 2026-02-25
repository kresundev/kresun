import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../../data/repositories/auth_repository_impl.dart';
import '../../providers/current_user_provider.dart';
import 'root_page_state.dart';

part 'root_page_view_model.g.dart';

@riverpod
class RootPageViewModel extends _$RootPageViewModel {
  @override
  RootPageState build() {
    _checkSession();
    return const RootPageState();
  }

  Future<void> _checkSession() async {
    final session = Supabase.instance.client.auth.currentSession;

    if (session == null) {
      state = state.copyWith(status: RootStatus.unauthenticated);
      return;
    }

    try {
      final user = await ref
          .read(authRepositoryProvider)
          .getCurrentUser(session.user.id);
      ref.read(currentUserProvider.notifier).setUser(user);
      state = state.copyWith(status: RootStatus.authenticated);
    } catch (_) {
      state = state.copyWith(status: RootStatus.unauthenticated);
    }
  }
}
