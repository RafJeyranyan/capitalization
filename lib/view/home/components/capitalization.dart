import 'package:flutter/material.dart';
import 'package:tn/core/style.dart';

import '../../../components/add_dot.dart';
import '../../../core/api/entities.dart';

class Capitalization extends StatelessWidget {
  final List<Company?> companies;

  const Capitalization({Key? key, required this.companies}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Align(
          alignment: Alignment.centerLeft,
          child: Column(
            children: [
              for (int i = 0; i < companies.length; i++)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: CapitalizationInfoRow(
                      prefixColor: AppColors.PieColors[i],
                      company: companies[i],
                      index: i),
                ),
            ],
          )),
    );
  }
}

class CapitalizationInfoRow extends StatelessWidget {
  final Color prefixColor;
  final int index;
  final Company? company;

  const CapitalizationInfoRow(
      {Key? key,
      required this.company,
      this.prefixColor = Colors.white,
      this.index = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: AppColors.content,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: size.width * 0.1,
            height: size.width * 0.1,
            color: prefixColor,
            child: Center(
                child: Text(
              "${index + 1}",
              style: AppTextStyle.defaultTextStyle,
            )),
          ),
          Text(
            company?.Name ?? "Unknown",
            style: AppTextStyle.contentLarge,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            "${addDots(company?.MarketCapitalization ?? "0")} \$",
            style: AppTextStyle.contentSmall,
            overflow: TextOverflow.ellipsis,

          ),
        ],
      ),
    );
  }
}

