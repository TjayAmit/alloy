import 'package:alloy/Component/Widget/text_form_widget.dart';
import 'package:alloy/packages.dart';

class SignupView extends GetView<AuthController> {
  const SignupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
        flexibleSpace: Container(
          width: Get.width,
          height: 35,
          color: Colors.amber,
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: Get.width,
          height: Get.height * 0.95,
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Flexible(
                flex: 2,
                child: SizedBox(
                  width: Get.width,
                  height: Get.height,
                  child: Center(
                      child: SizedBox(
                    width: 200,
                    height: 200,
                    child: SvgPicture.asset('./assets/logo/logo.svg'),
                  )),
                )),
            Flexible(flex: 5, child: form())
          ]),
        ),
      ),
    );
  }

  Widget form() {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
      child: SizedBox(
        width: Get.width,
        height: Get.height,
        child: Column(
          children: [
            const SizedBox(height: 20),
            TextFormWidget(
              controller: controller.email,
              label: "Email",
              textInputType: TextInputType.emailAddress,
              prefixIcon: Icons.email,
              enabled: true,
            ),
            const SizedBox(height: 20),
            TextFormWidget(
              controller: controller.password,
              label: "Password",
              textInputType: TextInputType.visiblePassword,
              prefixIcon: Icons.lock,
              enabled: true,
            ),
            const SizedBox(height: 20),
            TextFormWidget(
              controller: controller.confirmPassword,
              label: "Confirm password",
              textInputType: TextInputType.visiblePassword,
              prefixIcon: Icons.lock,
              enabled: true,
            ),
            const SizedBox(height: 30),
            TextButton(
                onPressed: () {},
                child: const TextView(
                  title: 'forgot password?',
                  color: Colors.black38,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                )),
            const SizedBox(height: 35),
            SizedBox(
              width: Get.width,
              height: 40,
              child: MaterialButton(
                color: Colors.amber,
                onPressed: () {
                  Get.toNamed('/home');
                },
                child: const TextView(
                  title: 'Register',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: Get.width,
              height: 40,
              child: MaterialButton(
                color: Colors.grey,
                onPressed: () {
                  Get.toNamed('/signin');
                },
                child: const TextView(
                  title: 'Login',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: Get.height * 0.1),
            SizedBox(
              width: Get.width,
              height: 40,
              child: const Center(
                child: TextView(
                  title: 'ALLOY COMPANY',
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 5,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
