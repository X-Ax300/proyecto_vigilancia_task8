import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'models/incidence.dart';
import 'my_app.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(IncidenceAdapter());
  await Hive.openBox<Incidence>('incidences');
  runApp(const MyApp());
}
