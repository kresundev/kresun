import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'core/router/app_router.dart';
import 'core/theme/app_theme.dart';

part 'main_initializer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //await _mainInitializer();

  runApp(const ProviderScope(child: KresunApp()));
}

class KresunApp extends StatelessWidget {
  const KresunApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Kresun',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      routerConfig: appRouter,
    );
  }
}
