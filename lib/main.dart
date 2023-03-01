
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:tn/view/home/home.dart';

import 'core/api/client.dart';
import 'cubits/main_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => MainCubit(mainApi: MainApi(Dio())),
        )
      ],
      // child: KonanicScreen(),
      child: SafeArea(
        child: HomeScreen()
      ),
    ));
  }
}

