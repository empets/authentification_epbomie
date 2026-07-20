import 'package:flutter/material.dart';
import 'package:gracechurchadmine/eglise_app.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('fr', null);
  runApp(const EgliseApp());
}
