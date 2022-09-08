import 'package:flutter/material.dart';

import '../section_point_one/section_point_one_usecase.dart';
import 'section_point_one_repository.dart';
import '../section_point/section_point.dart';

extension SelectionPointOneWidget on SelectionPointWidget {
  static Widget makeSelectionPointOne(SectionPointOneRepository repository) {
    var usecase = SectionPointOneUsecase(repository);
    return SelectionPointBuilder.section("Dòng rò", usecase);
  }
}
