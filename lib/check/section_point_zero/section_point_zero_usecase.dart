import '../section_point/usecases/section_point_usecase.dart';
import 'section_point_zero_repository.dart';

class SectionPointZeroUsecase extends SectionPointUseCase {
  SectionPointZeroUsecase(this._repository);

  final SectionPointZeroRepository _repository;

  @override
  changeAToValue(CheckPoint value) {
    _repository.changeZeroAToValue(value);
  }

  @override
  changeBToValue(CheckPoint value) {
    _repository.changeZeroBToValue(value);
  }

  @override
  changeCToValue(CheckPoint value) {
    _repository.changeZeroCToValue(value);
  }
}
