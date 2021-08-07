import 'dart:core';

class DayModel {
  int weekday;
  int date;
  bool hasEvent;
  bool isToday;

  DayModel({
    this.weekday,
    this.date,
    this.hasEvent,
    this.isToday,
  });

  String intToWeekDayString() {
    switch (this.weekday) {
      case 1:
        return 'MO';
        break;
      case 2:
        return 'DI';
        break;
      case 3:
        return 'MI';
        break;
      case 4:
        return 'DO';
        break;
      case 5:
        return 'FR';
        break;
      case 6:
        return 'SA';
        break;
      case 7:
        return 'SO';
        break;
      default:
        return '';
    }
  }
}
