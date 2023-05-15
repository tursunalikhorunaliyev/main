abstract class MonthName {
  static const List<String> monthList = [
    "Январь",
    "Февраль",
    "Mарт",
    "Aпрель",
    "Mай",
    "Июнь",
    "Июль",
    "Август",
    "Сентябрь",
    "Октябрь",
    "Ноябрь",
    "Декабрь",
  ];
  static List<String> getData(DateTime dateTime) {
    List<String> data = [];
    String dt = dateTime.toString();
    int day = dateTime.day;
    int month = dateTime.month;
    int year = dateTime.year;

    data.add(day.toString());
    data.add(monthList[month - 1]);
    data.add(year.toString());

    return data;
  }
}
