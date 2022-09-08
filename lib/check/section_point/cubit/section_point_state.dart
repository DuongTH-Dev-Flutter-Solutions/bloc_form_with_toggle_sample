part of 'section_point_cubit.dart';

class SectionPointState extends Equatable {
  final CheckPoint a;
  final CheckPoint b;
  final CheckPoint c;

  const SectionPointState({
    required this.a,
    required this.b,
    required this.c,
  });

  SectionPointState copyWith({
    CheckPoint? a,
    CheckPoint? b,
    CheckPoint? c,
  }) {
    return SectionPointState(
      a: a ?? this.a,
      b: b ?? this.b,
      c: c ?? this.c,
    );
  }

  @override
  List<Object?> get props => [a, b, c];
}
