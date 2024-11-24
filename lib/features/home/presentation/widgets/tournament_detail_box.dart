import 'package:flutter/material.dart';

class TournamentDetailBox extends StatelessWidget {
  const TournamentDetailBox({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('大会名：広島大会'),
              const Text('大会期間 : 2024年11月30日（土）~ 2024年12月1日（日）'),
              const Text('開催地 : 広島観音アリーナ'),
              const Text('主催団体 : 広島県セーリング連盟'),
              const Text('運営主体 : 広島県セーリング連盟'),
              const Text('クラス : 470級, スナイプ級'),
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
    );
  }
}
