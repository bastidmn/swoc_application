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
    if (event is DeleteEvent) {
      log('Query with id: ${event.deletedId} been deleted');
      //Database Command
      yield NewQueryPageState();
    } else if (event is CreateEvent) {
      log('New Query has been created');
      yield NewQueryPageState();
    } else {
      log('Update query page');
      yield NewQueryPageState();
    }
  }
}
