import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../text_style.dart';
import 'cubit/note_cubit.dart';
import 'repository/note_repository.dart';

class NoteWidget extends StatelessWidget {
  final String title;

  const NoteWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          title,
          style: TextTypography.title(),
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 256,
          child: _textField(),
        ),
      ],
    );
  }

  Widget _textField() {
    return BlocBuilder<NoteCubit, String?>(
      builder: (context, state) {
        return TextFormField(
          initialValue: state,
          maxLines: 256 ~/ 20,
          onChanged: (value) {
            context.read<NoteCubit>().onChangeNote(value);
          },
          decoration: const InputDecoration(
              border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            borderSide: BorderSide(color: Colors.black),
          )),
        );
      },
    );
  }
}

extension NoteWidgetBuilder on NoteWidget {
  static Widget makeNoteWidget(String title, NoteRepository repository) {
    return BlocProvider(
      create: (context) => NoteCubit(null, repository),
      child: NoteWidget(title: title),
    );
  }
}
