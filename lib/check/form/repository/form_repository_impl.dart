import 'form_repository.dart';

import '../../section_point_one/section_point_one_repository.dart';
import '../../section_point_zero/section_point_zero_repository.dart';
import '../../note/repository/note_repository.dart';

class FormRepositoryImpl extends FormRepository
    with NoteRepository, SectionPointZeroRepository, SectionPointOneRepository {
  FormRepositoryImpl();
  String? note;

  CheckPoint? zeroA;
  CheckPoint? zeroB;
  CheckPoint? zeroC;

  CheckPoint? oneA;
  CheckPoint? oneB;
  CheckPoint? oneC;

  @override
  submitForm() {
    print(
        "Submit value \n note $note,\n zeroA ${zeroA?.submitValue()},\n zeroB ${zeroB?.submitValue()},\n zeroC ${zeroC?.submitValue()}\n oneA ${oneA?.submitValue()},\n oneB ${oneB?.submitValue()},\n oneC ${oneC?.submitValue()}");
    //Request api:
  }

  @override
  changeNote(String? text) {
    print("changeNote $text");
    note = text;
  }

  @override
  changeZeroAToValue(CheckPoint value) {
    print("changeZeroAToValue ${value.name}");
    zeroA = value;
  }

  @override
  changeZeroBToValue(CheckPoint value) {
    print("changeZeroBToValue ${value.name}");
    zeroB = value;
  }

  @override
  changeZeroCToValue(CheckPoint value) {
    print("changeZeroCToValue ${value.name}");
    zeroC = value;
  }

  @override
  changeOneAToValue(CheckPoint value) {
    print("changeOneAToValue ${value.name}");
    oneA = value;
  }

  @override
  changeOneBToValue(CheckPoint value) {
    print("changeOneBToValue ${value.name}");

    oneB = value;
  }

  @override
  changeOneCToValue(CheckPoint value) {
    print("changeOneCToValue ${value.name}");
    oneC = value;
  }
}
