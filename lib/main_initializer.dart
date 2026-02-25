part of 'main.dart';

Future<void> _mainInitializer() async {
  await _setupSupabase();
}

Future<void> _setupSupabase() async {
  await Supabase.initialize(
    url: 'https://qcrnlujhxrqingnpiubp.supabase.co',

    anonKey: 'sb_publishable_tWfS2YJ1419yiZCN5sOcTw_leSKsNnt',
  );
}
