import 'package:flutter/material.dart';
import 'package:tn/components/add_dot.dart';
import 'package:tn/core/style.dart';

import '../../core/api/entities.dart';

class CompanyInfo extends StatelessWidget {
  final Company company;

  const CompanyInfo({Key? key,
    required this.company}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.appBar,

        ),
        backgroundColor: AppColors.greenBackGround,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 10.0,),
              Center(
                child: Text(company.Name ?? "",style: AppTextStyle.title,),
              ),
              const SizedBox(height: 30.0,),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 16.0),
                constraints: BoxConstraints(
                    minWidth: size.width
                ),
                decoration: const BoxDecoration(
                    borderRadius: AppBorderRadius.defaultBorderRadius,
                    color: AppColors.content
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Capitalization",
                          style: AppTextStyle.defaultTextStyle,
                        ),Text(
                          "${addDots(company.MarketCapitalization ?? "0")} \$",
                          style: AppTextStyle.defaultTextStyle,
                        ),
                      ],
                    ),
                    const SizedBox(height: 30.0,),

                    Text(company.Description ?? "",style: AppTextStyle.contentDefault,)
                  ],
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
