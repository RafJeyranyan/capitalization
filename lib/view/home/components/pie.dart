import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/api/entities.dart';
import '../../../core/style.dart';

class Pie extends StatelessWidget {
  final List<Company?> companies;

  const Pie({Key? key, required this.companies}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return AspectRatio(
      aspectRatio: 1.3,
      child: AspectRatio(
        aspectRatio: 3,
        child: PieChart(
          PieChartData(
            pieTouchData: PieTouchData(
              // touchCallback: (FlTouchEvent event, pieTouchResponse) {
              //   print(event.isInterestedForInteractions);
              //   if (pieTouchResponse == null ||
              //       pieTouchResponse.touchedSection == null ||
              //       pieTouchResponse.touchedSection!.touchedSectionIndex < 0) {
              //     return;
              //   }
              //   Navigator.of(context).push(
              //     MaterialPageRoute(builder: (context) {
              //       return CompanyInfo(
              //         company: companies[pieTouchResponse
              //             .touchedSection!.touchedSectionIndex]!,
              //       );
              //     }),
              //   );
              // },
            ),
            sectionsSpace: 0,
            centerSpaceRadius: 0,
            sections: [
              for (int i = 0; i < companies.length; i++)
                PieChartSectionData(
                    title: "${i + 1}",
                    titleStyle: AppTextStyle.numbers,
                    titlePositionPercentageOffset: 0.8,
                    radius: size.width * 0.3,
                    value:
                        double.parse(companies[i]?.MarketCapitalization ?? "0"),
                    color: AppColors.PieColors[i],
                    borderSide: const BorderSide(width: 1.0))
            ],
          ),
        ),
      ),
    );
    ;
  }
}
