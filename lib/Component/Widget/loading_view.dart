import 'dart:html';

import 'package:alloy/packages.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        width: Get.width,
        height: Get.height,
        child: const Center(
          child: SizedBox(
            width: 120,
            height: 120,
            child: TextView(
              title: 'ALLOY',
              fontSize: 32,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      )),
    );
  }
}
