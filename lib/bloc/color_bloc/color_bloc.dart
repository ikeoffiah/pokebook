import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokebook/bloc/color_bloc/color_event.dart';
import 'package:pokebook/bloc/color_bloc/color_state.dart';
import 'package:pokebook/core/constants/colors.dart';


class ColorBloc extends Bloc<ColorEvent,ColorState>{
  ColorBloc(): super(ColorInitialState()){

    on<ColorBlueEvent>((event, emit){
      emit(ColorBlueState(blueColor));
    });

     on<ColorYellowEvent>((event, emit){
      emit(ColorYellowState(yellowColor));
    });

     on<ColorPinkEvent>((event, emit){
      emit(ColorPinkState(pinkColor));
    });

  }
}