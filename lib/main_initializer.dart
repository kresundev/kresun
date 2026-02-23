part of 'main.dart';

Future<void> _mainInitializer() async {
  await _setupSupabase();
}

Future<void> _setupSupabase() async {
  await Supabase.initialize(
    url: const String.fromEnvironment('SUPABASE_URL'),
    anonKey: const String.fromEnvironment('SUPABASE_ANON_KEY'),
  );
}
