import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../controllers/fade_animation_controller.dart';
import '../../models/fade_animation_position_model.dart';

class FadeAnimation extends StatelessWidget {

  final controller = Get.put(FadeAnimationController());
  final int durationInMilliseconds;
  final FadeAnimationPosition? animate;
  final Widget child;

  FadeAnimation({
    super.key,
    required this.durationInMilliseconds,
    required this.animate,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() => AnimatedPositioned(
      duration: Duration(milliseconds: durationInMilliseconds),
      top: controller.animate.value ? animate?.topAfter : animate?.topBefore,
      bottom: controller.animate.value ? animate?.bottomAfter : animate?.bottomBefore,
      left: controller.animate.value ? animate?.leftAfter : animate?.leftBefore,
      right: controller.animate.value ? animate?.rightAfter : animate?.rightBefore,
      child: AnimatedOpacity(
        duration: Duration(milliseconds: durationInMilliseconds),
        opacity: controller.animate.value ? 1 : 0,
        child: child,
      ),
    ),
    );
  }
}
