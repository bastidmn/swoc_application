import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'starting_page_event.dart';

part 'starting_page_state.dart';

class StartingPageBloc extends Bloc<StartingPageEvent, int> {
  StartingPageBloc() : super(1);

  @override
  Stream<int> mapEventToState(
    StartingPageEvent event,
  ) async* {
    switch (event) {
      case StartingPageEvent.dictionaries:
        yield 0;
        break;
      case StartingPageEvent.home:
        yield 1;
        break;
      case StartingPageEvent.queries:
        yield 2;
        break;
    }
  }
}
