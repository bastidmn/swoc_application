import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'query_page_event.dart';

part 'query_page_state.dart';

class QueryPageBloc extends Bloc<QueryPageEvent, QueryPageState> {
  QueryPageBloc() : super(NewQueryPageState());

  @override
  Stream<QueryPageState> mapEventToState(
    QueryPageEvent event,
  ) async* {
    switch (event) {
      case QueryPageEvent.createEvent:
        log('New Query has been created');
        yield NewQueryPageState();
        break;
      case QueryPageEvent.deleteEvent:
        log('Query has been deleted');
        yield NewQueryPageState();
        break;
      case QueryPageEvent.updateEvent:
        log('Update query page');
        yield NewQueryPageState();
        break;
    }
  }
}
