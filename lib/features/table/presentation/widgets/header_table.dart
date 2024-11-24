import 'package:flutter/material.dart';

class HeaderTable extends StatelessWidget {
  final int raceCount;
  final int cutCount;

  const HeaderTable({
    super.key,
    required this.raceCount,
    required this.cutCount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _headerCell(text: '順位', width: 64),
        _headerCell(text: '番号', width: 64),
        _headerCell(text: '所属', width: 128),
        _headerCell(text: '選手', width: 128),
        for (int i = 1; i <= raceCount; i++) _headerRaceCell(num: '$i'),
        _headerCell(text: '累計', width: 64),
        for (int i = 1; i <= cutCount; i++)
          if (cutCount == 1)
            _headerCell(text: '除外', width: 64)
          else
            _headerCell(text: '除外$i', width: 64),
        _headerLastCell(text: '得点', width: 64),
      ],
    );
  }

  Widget _headerCell({required String text, required double width}) {
    return Container(
      alignment: Alignment.center,
      width: width,
      height: 64,
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.grey),
          left: BorderSide(color: Colors.grey),
          bottom: BorderSide(color: Colors.grey),
        ),
      ),
      child: Text(text),
    );
  }

  Widget _headerLastCell({required String text, required double width}) {
    return Container(
      alignment: Alignment.center,
      width: width,
      height: 64,
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.grey),
          left: BorderSide(color: Colors.grey),
          bottom: BorderSide(color: Colors.grey),
          right: BorderSide(color: Colors.grey),
        ),
      ),
      child: Text(text),
    );
  }

  Widget _headerRaceCell({required String num}) {
    return Container(
        alignment: Alignment.center,
        width: 192,
        height: 64,
        child: Column(
          children: [
            Container(
              width: 192,
              height: 32,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.grey),
                  left: BorderSide(color: Colors.grey),
                  bottom: BorderSide(color: Colors.grey),
                ),
              ),
              child: Text('第$numレース'),
            ),
            Row(
              children: [
                Container(
                  width: 64,
                  height: 32,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    border: Border(
                      left: BorderSide(color: Colors.grey),
                      bottom: BorderSide(color: Colors.grey),
                    ),
                  ),
                  child: const Text('着順'),
                ),
                Container(
                  width: 64,
                  height: 32,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    border: Border(
                      left: BorderSide(color: Colors.grey),
                      right: BorderSide(color: Colors.grey),
                      bottom: BorderSide(color: Colors.grey),
                    ),
                  ),
                  child: const Text('順位'),
                ),
                Container(
                  width: 64,
                  height: 32,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.grey),
                    ),
                  ),
                  child: const Text('得点'),
                ),
              ],
            ),
          ],
        ));
  }
}
