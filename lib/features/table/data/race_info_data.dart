class RaceInfoData {
  final String windDirection; // 風向
  final String windSpeed; // 風速
  final String startTime; // スタート時刻
  final String topFinishTime; // トップ艇フィニッシュ時刻
  final String endTime; // レース終了時刻

  RaceInfoData({
    required this.windDirection,
    required this.windSpeed,
    required this.startTime,
    required this.topFinishTime,
    required this.endTime,
  });
}

// 初期データ
final List<RaceInfoData> raceInfoData = [
  RaceInfoData(
    windDirection: '70',
    windSpeed: '11',
    startTime: '11:20:00',
    topFinishTime: '11:39:30',
    endTime: '11:54:30',
  ),
  RaceInfoData(
    windDirection: '210',
    windSpeed: '14',
    startTime: '12:20:00',
    topFinishTime: '12:39:30',
    endTime: '12:54:30',
  ),
  RaceInfoData(
    windDirection: '70',
    windSpeed: '11',
    startTime: '11:20:00',
    topFinishTime: '11:39:30',
    endTime: '11:54:30',
  ),
  RaceInfoData(
    windDirection: '210',
    windSpeed: '14',
    startTime: '12:20:00',
    topFinishTime: '12:39:30',
    endTime: '12:54:30',
  ),
  RaceInfoData(
    windDirection: '70',
    windSpeed: '11',
    startTime: '11:20:00',
    topFinishTime: '11:39:30',
    endTime: '11:54:30',
  ),
  RaceInfoData(
    windDirection: '210',
    windSpeed: '14',
    startTime: '12:20:00',
    topFinishTime: '12:39:30',
    endTime: '12:54:30',
  ),
];
