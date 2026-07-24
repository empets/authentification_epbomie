import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grace_church/core/constante/params.dart';
import 'package:grace_church/core/injection/injection_container.dart';
import 'package:grace_church/core/observer/observer.dart';
import 'package:grace_church/eglise_app.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      databaseURL: 'https://epbomie-default-rtdb.firebaseio.com',
      apiKey: GlobalParams.apiKey,
      appId: GlobalParams.appId,
      messagingSenderId: GlobalParams.messagingSenderId,
      projectId: GlobalParams.projectId,
      storageBucket: GlobalParams.storageBucket,
    ),
  );
  await configureDependencies();

  await initializeDateFormatting('fr', null);

  await Supabase.initialize(
    url: GlobalParams.supabaseUrl,
    anonKey: GlobalParams.supabaseAnonKey,
  );

  Bloc.observer = SimpleBlocObserver();

  runApp(const EgliseApp());
}
