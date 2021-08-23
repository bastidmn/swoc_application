import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'starting_page_event.dart';

part 'starting_page_state.dart';

class StartingPageBloc extends Bloc<StartingPageEvent, StartingPageState> {
  StartingPageBloc() : super(StartingPageStateHome());

  @override
  Stream<StartingPageState> mapEventToState(
    StartingPageEvent event,
  ) async* {
    switch (event) {
      case StartingPageEvent.dictionaries:
        yield StartingPageStateDictionaries();
        break;
      case StartingPageEvent.home:
        yield StartingPageStateHome();
        break;
      case StartingPageEvent.queries:
        yield StartingPageStateQueries();
        break;
    }
  }
}
