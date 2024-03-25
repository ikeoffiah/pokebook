import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokebook/bloc/nav_bloc/nav_event.dart';
import 'package:pokebook/bloc/nav_bloc/nav_state.dart';


class NavBloc extends Bloc<NavEvent, NavState>{
  NavBloc(): super(NavInitialState()){
    on<NavPreviewEvent>((event, emit){
      emit(NavPreviewState(0));
     });

     on<NavStatsEvent>((event, emit){
      emit(NavStatsState(1)); 
     });

     on<NavSimilarEvent>((event, emit){
      emit(NavSimilarState(2)); 
     });
  }
}