import 'package:flutter/material.dart';
import '../../data/table_data.dart';

class TournamentTable extends StatelessWidget {
  const TournamentTable({super.key});

  @override
  Widget build(BuildContext context) {
    // 最大の得点数を取得
    final int maxScores = tableData
        .map((data) => data.scores.length)
        .reduce((a, b) => a > b ? a : b);

    return DataTable(
      columns: [
        const DataColumn(label: Text('着順')),
        const DataColumn(label: Text('所属')),
        for (int i = 0; i < maxScores; i++)
          DataColumn(label: Text('得点${i + 1}')),
      ],
      rows: tableData.map((data) {
        return DataRow(cells: [
          DataCell(Text(data.position)),
          DataCell(Text(data.university)),
          ...data.scores.map((score) => DataCell(Text(score))),
          // 不足している得点列を空白で埋める
          for (int i = data.scores.length; i < maxScores; i++)
            const DataCell(Text('')),
        ]);
      }).toList(),
    );
  }
}
