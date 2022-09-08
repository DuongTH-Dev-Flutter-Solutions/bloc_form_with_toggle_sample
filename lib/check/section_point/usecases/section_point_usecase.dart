import '../models/check_point.dart';
export '../models/check_point.dart';

abstract class SectionPointUseCase {
  changeAToValue(CheckPoint value);
  changeBToValue(CheckPoint value);
  changeCToValue(CheckPoint value);
}
