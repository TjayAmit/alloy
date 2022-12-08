import 'package:alloy/Component/Widget/text_form_widget.dart';
import 'package:alloy/packages.dart';

class ForgotPasswordView extends GetView<AuthController> {
  const ForgotPasswordView({Key? key}) : super(key: key);

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
            const SizedBox(height: 35),
            SizedBox(
              width: Get.width,
              height: 40,
              child: MaterialButton(
                color: Colors.amber,
                onPressed: () {
                  Get.toNamed('/login');
                },
                child: const TextView(
                  title: 'Send Recovery Link',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
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
