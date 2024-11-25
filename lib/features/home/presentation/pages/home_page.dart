import 'package:flutter/material.dart';
import 'package:wind_wave/features/home/presentation/widgets/tournament_detail_box.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // 検索機能の例
            },
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: TournamentDetailBox(),
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.pushNamed(context, '/detail'); // ページ遷移
            //   },
            //   child: const Text('Go to Detail'),
            // ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          //
        },
        icon: const Icon(Icons.add),
        label: const Text('大会を新規作成'),
      ),
    );
  }
}
