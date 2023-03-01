import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tn/view/home/components/capitalization.dart';
import 'package:tn/view/home/components/pie.dart';

import '../../core/style.dart';
import '../../cubits/main_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainCubit, MainState>(
      builder: (context, state) {
        return Scaffold(
            backgroundColor: AppColors.background,
            body: state.stage == MainStateStage.loading
                ? const Center(child: CircularProgressIndicator())
                : SingleChildScrollView(
                    child: Column(
                      children: [
                        Pie(companies: state.companies),
                        Capitalization(
                          companies: state.companies,
                        )
                      ],
                    ),
                  ));
      },
    );
  }
}
