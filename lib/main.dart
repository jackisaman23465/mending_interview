import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mending_interview/ui/router/router.dart';
import 'package:mending_interview/ui/theme/theme_data.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // flutter imageCache 大小限制
  PaintingBinding.instance.imageCache.maximumSize = 1000;
  PaintingBinding.instance.imageCache.maximumSizeBytes = 300 << 20;

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: dartThemeData,
      routerConfig: router,
    );
  }
}
