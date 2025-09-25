part of 'color_bloc.dart';

sealed class ColorEvent extends Equatable {}

class ChangeColorEvent extends ColorEvent {
  @override
  List<Object?> get props => [];
}
