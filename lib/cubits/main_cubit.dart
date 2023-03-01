import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tn/configs.dart';
import 'package:tn/core/api/entities.dart';

import '../core/api/client.dart';

class MainCubit extends Cubit<MainState> {
  final MainApi mainApi;

  MainCubit({
    required this.mainApi,
  }) : super(MainState(stage: MainStateStage.loading, mainApi: mainApi)) {
    load();
  }

  load() async {
    bool error = false;
    List<Company> tmp = [];
    for (var element in companySymbols) {
      await mainApi.getCompanyBySymbol(element).then((value) {
        if (value != null) {
          if (value.Note != null) {
            error = true;
            return;
          }
          tmp.add(value);
        }
      });
    }
    if (error) {
      emit(state.copyWith(stage: MainStateStage.error));
    } else {
      emit(state.copyWith(stage: MainStateStage.display, companies: tmp));
    }
  }
}

enum MainStateStage {
  loading,
  display,
  error,
}

class MainState extends Equatable {
  final MainStateStage stage;
  final MainApi mainApi;
  final List<Company?> companies;

  const MainState({
    required this.stage,
    required this.mainApi,
    this.companies = const [],
  });

  MainState copyWith({
    MainStateStage? stage,
    MainApi? mainApi,
    List<Company?>? companies,
  }) {
    return MainState(
      stage: stage ?? this.stage,
      mainApi: mainApi ?? this.mainApi,
      companies: companies ?? this.companies,
    );
  }

  @override
  List<Object?> get props => [
        stage,
      ];
}
