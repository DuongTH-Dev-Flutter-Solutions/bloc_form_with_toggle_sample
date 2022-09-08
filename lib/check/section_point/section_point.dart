import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/section_point_cubit.dart';
import 'ui/section_point_widget.dart';
import 'usecases/section_point_usecase.dart';

export 'ui/section_point_widget.dart';

extension SelectionPointBuilder on SelectionPointWidget {
  static Widget section(String title, SectionPointUseCase usecase) {
    var initialState = const SectionPointState(
      a: CheckPoint.green,
      b: CheckPoint.green,
      c: CheckPoint.green,
    );
    return BlocProvider(
      create: (context) => SectionPointCubit(initialState, usecase),
      child: SelectionPointWidget(title: title),
    );
  }
}
