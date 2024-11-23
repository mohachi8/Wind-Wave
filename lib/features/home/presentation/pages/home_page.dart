import 'package:flutter/material.dart';

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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: SizedBox(
                child: Container(
                  color: Colors.grey[200],
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('大会名：広島大会'),
                        Text('大会期間 : 2024年11月30日（土）~ 2024年12月1日（日）'),
                        Text('開催地 : 広島観音アリーナ'),
                        Text('主催団体 : 広島県セーリング連盟'),
                        Text('運営主体 : 広島県セーリング連盟'),
                        Text('クラス : 470級, スナイプ級'),
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                // Navigator.pushNamed(context, '/detail'); // ページ遷移
                              },
                              child: const Text('選手の方はこちら'),
                            ),
                            const SizedBox(width: 16),
                            ElevatedButton(
                              onPressed: () {
                                // Navigator.pushNamed(context, '/detail'); // ページ遷移
                              },
                              child: const Text('運営の方はこちら'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.pushNamed(context, '/detail'); // ページ遷移
            //   },
            //   child: const Text('Go to Detail'),
            // ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: SizedBox(
                child: Container(
                  color: Colors.grey[200],
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('大会名：広島大会'),
                        Text('大会期間 : 2024年11月30日（土）~ 2024年12月1日（日）'),
                        Text('開催地 : 広島観音アリーナ'),
                        Text('主催団体 : 広島県セーリング連盟'),
                        Text('運営主体 : 広島県セーリング連盟'),
                        Text('クラス : 470級, スナイプ級'),
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                // Navigator.pushNamed(context, '/detail'); // ページ遷移
                              },
                              child: const Text('選手の方はこちら'),
                            ),
                            const SizedBox(width: 16),
                            ElevatedButton(
                              onPressed: () {
                                // Navigator.pushNamed(context, '/detail'); // ページ遷移
                              },
                              child: const Text('運営の方はこちら'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
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
