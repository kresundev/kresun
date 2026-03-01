import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../widgets/app_logo.dart';
import 'root_page_state.dart';
import 'root_page_view_model.dart';

class RootPage extends ConsumerWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(rootPageViewModelProvider, (_, next) {
      next.whenData((state) {
        switch (state.status) {
          case RootStatus.authenticated:
            context.go('/home');
          case RootStatus.unauthenticated:
            context.go('/login');
        }
      });
    });

    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: AppLogo(size: 110),
      ),
    );
  }
}
