import 'package:flutter/material.dart';
import 'package:wind_wave/features/table/presentation/pages/table_page.dart';
import '../features/home/presentation/pages/home_page.dart';
import '../features/profile/presentation/pages/profile_page.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _currentIndex = 0;

  // 各ページのリスト
  final List<Widget> _pages = [
    const TablePage(),
    const ProfilePage(),
    const HomePage(),
    const HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex], // 現在選択されているページ
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent, // リップルエフェクトを無効化
          highlightColor: Colors.transparent, // タッチ時のハイライトを無効化
        ),
        child: BottomNavigationBar(
          // backgroundColor: Colors.white, // 背景色を変更
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.table_chart),
              label: '成績表',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.edit),
              label: '編集',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '選手情報',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: '設定',
            ),
          ],
        ),
      ),
    );
  }
}
