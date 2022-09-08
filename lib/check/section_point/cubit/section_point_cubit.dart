import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../usecases/section_point_usecase.dart';

part 'section_point_state.dart';

class SectionPointCubit<UseCase extends SectionPointUseCase>
    extends Cubit<SectionPointState> {
  SectionPointCubit(super.initialState, this._usecase);
  final UseCase _usecase;

  onChangeA() {
    var newA = state.a.nextValue();
    _usecase.changeAToValue(newA);
    emit(state.copyWith(a: newA));
  }

  onChangeB() {
    var newB = state.b.nextValue();
    _usecase.changeBToValue(newB);
    emit(state.copyWith(b: newB));
  }

  onChangeC() {
    var newC = state.c.nextValue();
    _usecase.changeCToValue(newC);
    emit(state.copyWith(c: newC));
  }
}
