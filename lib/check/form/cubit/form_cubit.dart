import 'package:flutter_bloc/flutter_bloc.dart';

import '../repository/form_repository.dart';

part 'form_state.dart';

class FormCubit extends Cubit<FState> {
  FormCubit(super.initialState, this._repository);

  final FormRepository _repository;

  onSubmitForm() {
    _repository.submitForm();
  }
}
