import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/style.dart';
import '../../cubits/main_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocBuilder<MainCubit,MainState>(
      builder: (context,state){
        return Scaffold(
          body: Center(
            child: state.stage == MainStateStage.loading ? const CircularProgressIndicator()
                :
            Column(
              children: [
                Text("data"),
                Text("${state.companies.length}"),

                ...state.companies.map((e) => Text(e?.Name ?? "aaa"))
              ],
            ),
          ),
        );
      },
    );
  }
}
