import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/api/client.dart';

class MainCubit extends Cubit<MainState> {
  final MainApi mainApi;

  MainCubit({
    required this.mainApi,
  }) : super(MainState(
    stage: MainStateStage.display,
    mainApi: mainApi
  )){

  }


}


enum MainStateStage {
  loading,
  display,
}

class MainState extends Equatable {
  final MainStateStage stage;
  final MainApi mainApi;

  const MainState({
    required this.stage,
    required this.mainApi,

  });

  MainState copyWith({
   MainStateStage? stage,
   MainApi? mainApi,

  }) {
    return MainState(
      stage: stage ?? this.stage,
      mainApi: mainApi ?? this.mainApi,



    );
  }

  @override
  List<Object?> get props => [stage,];
}
