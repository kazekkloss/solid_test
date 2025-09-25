part of 'color_bloc.dart';

class ColorState extends Equatable {
  final Color color;
  const ColorState({required this.color});

  @override
  List<Object?> get props => [color];
}