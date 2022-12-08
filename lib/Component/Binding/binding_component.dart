import 'package:alloy/packages.dart';

class BindingComponent extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(() => AuthController());
  }
}
