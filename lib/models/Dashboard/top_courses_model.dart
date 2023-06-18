import '../../constants/images_strings.dart';

class TopCoursesModel {

  final String title;
  final String image;
  final void Function()? onPressed;
  final String count;
  final String description;

  TopCoursesModel(this.title, this.image, this.onPressed, this.count, this.description);

  static List<TopCoursesModel> list = [
    TopCoursesModel('Material Design', kTopCourseImage2, null, '6 sections', 'Programming & Design'),
    TopCoursesModel('Flutter Crash Course', kTopCourseImage1, null, '3 sections', 'Programming Languages'),
  ];
}