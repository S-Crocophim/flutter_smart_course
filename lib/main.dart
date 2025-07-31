import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_smart_course/app/navigation/app_router.dart';
import 'package:flutter_smart_course/app/config/app_theme.dart';
import 'package:flutter_smart_course/common/models/course_model.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(0)) {
    Hive.registerAdapter(CourseModelAdapter());
  }

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Smart Course',
      theme: AppTheme.theme,
      debugShowCheckedModeBanner: false,
      routerConfig: goRouterProvider,
    );
  }
}