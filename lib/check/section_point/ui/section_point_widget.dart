import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../text_style.dart';
import '../models/check_point.dart';
import '../cubit/section_point_cubit.dart';
import 'check_point_widget.dart';

class SelectionPointWidget extends StatelessWidget {
  final String title;

  const SelectionPointWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          title,
          style: TextTypography.title(),
          textAlign: TextAlign.left,
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _checkPointA(),
            const SizedBox(width: 32),
            _checkPointB(),
            const SizedBox(width: 32),
            _checkPointC(),
          ],
        )
      ],
    );
  }

  Widget _checkPointA() {
    return BlocBuilder<SectionPointCubit, SectionPointState>(
      buildWhen: (previous, current) => previous.a != current.a,
      builder: (context, state) {
        return CheckPointWidget(
          title: "A",
          color: state.a.displayColors(),
          onTap: (() {
            context.read<SectionPointCubit>().onChangeA();
          }),
        );
      },
    );
  }

  Widget _checkPointB() {
    return BlocBuilder<SectionPointCubit, SectionPointState>(
      buildWhen: (previous, current) => previous.b != current.b,
      builder: (context, state) {
        return CheckPointWidget(
          title: "B",
          color: state.b.displayColors(),
          onTap: (() {
            context.read<SectionPointCubit>().onChangeB();
          }),
        );
      },
    );
  }

  Widget _checkPointC() {
    return BlocBuilder<SectionPointCubit, SectionPointState>(
      buildWhen: (previous, current) => previous.c != current.c,
      builder: (context, state) {
        return CheckPointWidget(
          title: "C",
          color: state.c.displayColors(),
          onTap: (() {
            context.read<SectionPointCubit>().onChangeC();
          }),
        );
      },
    );
  }
}
