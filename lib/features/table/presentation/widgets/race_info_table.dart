import 'package:flutter/material.dart';
import 'package:wind_wave/features/table/data/race_info_data.dart';

class RaceInfoTable extends StatelessWidget {
  final int raceCount;
  final int cutCount;

  const RaceInfoTable({
    super.key,
    required this.raceCount,
    required this.cutCount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _infoTitleColumn(width: 384),
        for (int i = 1; i <= raceCount; i++)
          _raceInfoColumn(index: i, width: 192),
        _lastCell(width: 126 + (cutCount * 64)),
      ],
    );
  }

  Widget _infoTitleColumn({required double width}) {
    return Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            _infoTitleCell(text: '風向', width: width),
            _infoTitleCell(text: '風速', width: width),
            _infoTitleCell(text: 'スタート時刻', width: width),
            _infoTitleCell(text: 'トップ艇フィニッシュ時刻', width: width),
            _infoTitleCell(text: 'レース終了時刻', width: width),
          ],
        ));
  }

  Widget _infoTitleCell({required String text, required double width}) {
    return Container(
      alignment: Alignment.center,
      width: width,
      height: 32,
      decoration: const BoxDecoration(
        border: Border(
          left: BorderSide(color: Colors.grey),
          bottom: BorderSide(color: Colors.grey),
        ),
      ),
      child: Text(text),
    );
  }

  Widget _raceInfoColumn({required int index, required double width}) {
    return Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            _infoTitleCell(
                text: raceInfoData.length > index - 1
                    ? '${raceInfoData[index - 1].windDirection}°'
                    : '',
                width: width),
            _infoTitleCell(
                text: raceInfoData.length > index - 1
                    ? '${raceInfoData[index - 1].windSpeed}kt'
                    : '',
                width: width),
            _infoTitleCell(
                text: raceInfoData.length > index - 1
                    ? raceInfoData[index - 1].startTime
                    : '',
                width: width),
            _infoTitleCell(
                text: raceInfoData.length > index - 1
                    ? raceInfoData[index - 1].topFinishTime
                    : '',
                width: width),
            _infoTitleCell(
                text: raceInfoData.length > index - 1
                    ? raceInfoData[index - 1].endTime
                    : '',
                width: width),
          ],
        ));
  }

  Widget _lastCell({required double width}) {
    return Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          border: Border(
            left: BorderSide(color: Colors.grey),
            right: BorderSide(color: Colors.grey),
            bottom: BorderSide(color: Colors.grey),
          ),
        ),
        child: SizedBox(
          width: width,
          height: 160,
        ));
  }
}
