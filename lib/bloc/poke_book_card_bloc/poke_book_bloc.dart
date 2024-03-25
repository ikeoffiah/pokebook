import 'package:pokebook/bloc/poke_book_card_bloc/poke_book_event.dart';
import 'package:pokebook/bloc/poke_book_card_bloc/poke_book_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class PokebookBloc extends Bloc<PokebookEvent, PokebookState> {
  PokebookBloc() : super(PokebookState());

  @override
  Stream<PokebookState> mapEventToState(PokebookEvent event) async* {
    if (event is UpdateStateEvent) {
      yield PokebookState(
        imagePath: event.imagePath,
        title: event.title,
        features:  event.features,
      );
    }
  }
}
