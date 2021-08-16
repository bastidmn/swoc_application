part of 'starting_page_bloc.dart';

@immutable
abstract class StartingPageState {
  getPageCount();
}

class StartingPageStateHome extends StartingPageState {
  @override
  getPageCount() {
    return 1;
  }
}

class StartingPageStateQueries extends StartingPageState {
  @override
  getPageCount() {
    return 2;
  }
}

class StartingPageStateDictionaries extends StartingPageState {
  @override
  getPageCount() {
    return 0;
  }
}
