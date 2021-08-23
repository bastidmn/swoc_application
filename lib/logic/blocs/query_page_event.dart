part of 'query_page_bloc.dart';

// enum QueryPageEvent {
//   deleteEvent,
//   createEvent,
//   updateEvent,
// }

abstract class QueryPageEvent {}

class DeleteEvent extends QueryPageEvent {
  final String deletedId;

  DeleteEvent(this.deletedId);
}

class CreateEvent extends QueryPageEvent {}

class UpdateEvent extends QueryPageEvent {}
