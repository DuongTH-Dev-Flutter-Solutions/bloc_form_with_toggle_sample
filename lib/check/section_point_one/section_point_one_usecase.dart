import '../section_point/usecases/section_point_usecase.dart';
import 'section_point_one_repository.dart';

class SectionPointOneUsecase extends SectionPointUseCase {
  SectionPointOneUsecase(this._repository);

  final SectionPointOneRepository _repository;

  @override
  changeAToValue(CheckPoint value) {
    _repository.changeOneAToValue(value);
  }

  @override
  changeBToValue(CheckPoint value) {
    _repository.changeOneBToValue(value);
  }

  @override
  changeCToValue(CheckPoint value) {
    _repository.changeOneCToValue(value);
  }
}
