class TableRowData {
  final String position; // 着順
  final String university; // 所属
  final List<String> scores; // 各レースの得点

  TableRowData({
    required this.position,
    required this.university,
    required this.scores,
  });
}

// 初期データ
final List<TableRowData> tableData = [
  TableRowData(
    position: '1',
    university: '京都府立医科大学',
    scores: ['7', '2', '2', '1', '1', '1', '1', '5', '3'],
  ),
  TableRowData(
    position: '2',
    university: '広島大学',
    scores: ['1', '1', '3', '3', '2', '2', '1', '1', '1'],
  ),
  // 他のデータを追加
];
