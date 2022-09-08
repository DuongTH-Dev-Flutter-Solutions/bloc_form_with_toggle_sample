import 'package:flutter_bloc/flutter_bloc.dart';

import '../repository/note_repository.dart';

class NoteCubit extends Cubit<String?> {
  NoteCubit(super.initialState, this._noteRepository);

  final NoteRepository _noteRepository;

  onChangeNote(String? text) {
    _noteRepository.changeNote(text);
    emit(text);
  }
}
