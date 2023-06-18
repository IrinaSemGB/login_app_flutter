import 'package:flutter/material.dart';
import '../../../models/Dashboard/top_courses_model.dart';

class DashboardTopCoursesWidget extends StatelessWidget {

  final Color bannerBackgroundColor;
  final TextTheme textTheme;

  const DashboardTopCoursesWidget({super.key,
    required this.bannerBackgroundColor,
    required this.textTheme,
  });


  @override
  Widget build(BuildContext context) {

    final List<TopCoursesModel> list = TopCoursesModel.list;

    return SizedBox(
      height: 200.0,
      child: ListView.builder(
        itemCount: list.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          final course = list[index];
          return GestureDetector(
            onTap: course.onPressed,
            child: SizedBox(
              width: 320,
              height: 200,
              child: Container(
                margin: EdgeInsets.only(right: 10.0, top: 5.0),
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: bannerBackgroundColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            course.title,
                            style: textTheme.displayMedium,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Flexible(child: Image(image: AssetImage(course.image), height: 100,)),
                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // TODO Realisation
                          },
                          child: Icon(Icons.play_arrow),
                          style: ElevatedButton.styleFrom(shape: CircleBorder()),
                        ),
                        SizedBox(width: 15.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(course.count,
                              style: textTheme.displayMedium,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              course.description,
                              style: textTheme.displaySmall,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}