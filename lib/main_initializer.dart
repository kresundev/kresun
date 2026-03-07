part of 'main.dart';

Future<void> _mainInitializer() async {
  await _setupFirebase();
  await _setupSupabase();
}

Future<void> _setupFirebase() async {
  await Firebase.initializeApp();
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };
}

Future<void> _setupSupabase() async {
  await Supabase.initialize(
    url: 'https://qcrnlujhxrqingnpiubp.supabase.co',

    anonKey: 'sb_publishable_tWfS2YJ1419yiZCN5sOcTw_leSKsNnt',
  );
}
