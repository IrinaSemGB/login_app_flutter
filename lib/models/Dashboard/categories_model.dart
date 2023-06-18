class CategoriesModel {

  final String title;
  final String heading;
  final String subHeading;
  final void Function()? onPress;

  CategoriesModel(this.title, this.heading, this.subHeading, this.onPress);

  static List<CategoriesModel> list = [
    CategoriesModel('JS', 'Java Script', '10 Lessons', null),
    CategoriesModel('F', 'Flutter', '11 Lessons', null),
    CategoriesModel('H', 'HTML', '8 Lessons', null),
    CategoriesModel('K', 'Kotlin', '20 Lessons', null),
    CategoriesModel('P', 'Python', '100 Lessons', null),
  ];
}