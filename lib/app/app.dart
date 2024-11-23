import 'package:flutter/material.dart';
import 'theme.dart'; // theme.dartをインポート
import 'routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme, // ライトテーマを適用
      darkTheme: AppTheme.darkTheme, // ダークテーマを適用
      themeMode: ThemeMode.system, // システム設定に従う（ライト/ダーク切り替え）
      initialRoute: AppRoutes.main, // 初期画面
      routes: AppRoutes.routes, // ルート管理
    );
  }
}
