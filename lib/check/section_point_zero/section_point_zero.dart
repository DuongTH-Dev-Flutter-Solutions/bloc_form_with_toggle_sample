import 'package:flutter/material.dart';
import 'package:flutter_application_5/check/section_point_zero/section_point_zero_usecase.dart';

import 'section_point_zero_repository.dart';
import '../section_point/section_point.dart';

extension SelectionPointZeroWidget on SelectionPointWidget {
  static Widget makeSelectionPointZero(SectionPointZeroRepository repository) {
    var usecase = SectionPointZeroUsecase(repository);
    return SelectionPointBuilder.section("Kiem tra bang mat", usecase);
  }
}
