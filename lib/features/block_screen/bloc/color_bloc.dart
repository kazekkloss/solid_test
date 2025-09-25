import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solid_test/core/methods/color_generator.dart';

part 'color_event.dart';
part 'color_state.dart';

class ColorBloc extends Bloc<ColorEvent, ColorState> {
  final ColorGenerator _colorGenerator = ColorGenerator();
  ColorBloc() : super(const ColorState(color: Color(0xFFFFFFFF))) {
    on<ChangeColorEvent>(_onChangeColorEvent);
  }

  void _onChangeColorEvent(ChangeColorEvent event, Emitter<ColorState> emit) {  
    emit(ColorState(color: _colorGenerator.getRandomColor()));
  }
}
