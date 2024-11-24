import 'package:flutter/material.dart';
import 'package:wind_wave/features/table/presentation/widgets/header_table.dart';
import 'package:wind_wave/features/table/presentation/widgets/race_info_table.dart';
import 'package:wind_wave/features/table/presentation/widgets/tournament_table.dart';

class TablePage extends StatelessWidget {
  const TablePage({super.key});

  static const int raceCount = 3;
  static const int cutCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('試合結果'),
      ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderTable(
                raceCount: raceCount,
                cutCount: cutCount,
              ),
              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: TournamentTable(),
              // ),
              RaceInfoTable(
                raceCount: raceCount,
                cutCount: cutCount,
              )
            ],
          ),
        ),
      ),
    );
  }
}
