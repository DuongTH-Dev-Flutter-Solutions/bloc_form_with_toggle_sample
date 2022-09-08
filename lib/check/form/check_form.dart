import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../note/note_widget.dart';
import '../section_point_one/section_point_one.dart';
import '../section_point_zero/section_point_zero.dart';
import 'cubit/form_cubit.dart';
import 'repository/form_repository_impl.dart';
import 'widgets/submit_button.dart';

class CheckForm extends StatelessWidget {
  CheckForm({Key? key}) : super(key: key);

  final _formRepository = FormRepositoryImpl();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(child: _blocProvier(_blocListener(_form()))));
  }

  Widget _blocProvier(Widget child) {
    return BlocProvider(
      create: (context) => FormCubit(FState.initial, _formRepository),
      child: child,
    );
  }

  /// For handle state
  Widget _blocListener(Widget child) {
    return BlocListener<FormCubit, FState>(
      listenWhen: (previous, current) => current != FState.initial,
      listener: (context, state) {
        switch (state) {
          case FState.initial:
            break;
          case FState.loading:
            print("CheckPage Show loading indicator");
            break;
          case FState.success:
            print("CheckPage Submit success");
            break;
          case FState.failure:
            print("CheckPage Submit failure");
            break;
        }
      },
      child: child,
    );
  }

  Widget _form() {
    return SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SelectionPointZeroWidget.makeSelectionPointZero(_formRepository),
            const SizedBox(height: 32),
            SelectionPointOneWidget.makeSelectionPointOne(_formRepository),
            const SizedBox(height: 32),
            NoteWidgetBuilder.makeNoteWidget("Ghi Chu", _formRepository),
            const SizedBox(height: 32),
            const SubmitButton(),
          ],
        ));
  }
}
