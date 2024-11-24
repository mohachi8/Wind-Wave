import 'package:flutter/material.dart';
import 'package:wind_wave/features/table/presentation/widgets/header_table.dart';
import 'package:wind_wave/features/table/presentation/widgets/tournament_table.dart';

class TablePage extends StatelessWidget {
  const TablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('試合結果'),
      ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderTable(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: TournamentTable(),
            ),
          ],
        ),
      ),
    );
  }
}
