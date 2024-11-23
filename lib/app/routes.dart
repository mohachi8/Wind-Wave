import 'package:flutter/material.dart';
import 'main_layout.dart';
import '../features/home/presentation/pages/detail_page.dart';

class AppRoutes {
  static const String main = '/main'; // BottomNavigationBar付きの基盤
  static const String detail = '/detail'; // 詳細画面のルート

  static final Map<String, WidgetBuilder> routes = {
    main: (context) => const MainLayout(),
    detail: (context) => const DetailPage(),
  };
}
