import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tn/view/home/components/capitalization.dart';
import 'package:tn/view/home/components/pie.dart';

import '../../core/style.dart';
import '../../cubits/main_cubit.dart';
import '../error/error_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.greenBackGround,
        body: BlocBuilder<MainCubit, MainState>(
          builder: (context, state) {
            switch (state.stage) {
              case MainStateStage.error:
                return const ErrorPage();

              case MainStateStage.display:
               return SingleChildScrollView(
                  child: Column(
                    children: [
                      Pie(companies: state.companies),
                      Capitalization(
                        companies: state.companies,
                      )
                    ],
                  ),
                );
              case MainStateStage.loading:
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
