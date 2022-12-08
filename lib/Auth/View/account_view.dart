import 'package:alloy/Component/Widget/text_form_widget.dart';
import 'package:alloy/packages.dart';

class AccountView extends GetView<AuthController> {
  const AccountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        flexibleSpace: Container(
          width: Get.width,
          height: 35,
          color: Colors.amber,
        ),
        title: const TextView(
          title: 'ACCOUNT',
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
        leading: IconButton(
            splashColor: Colors.transparent,
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back_outlined,
              color: Colors.amber,
            )),
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
                    child: SvgPicture.asset('./assets/img/account_logo.svg'),
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
              controller: controller.name,
              label: "Full name",
              textInputType: TextInputType.text,
              prefixIcon: Icons.email,
              enabled: true,
            ),
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
            const SizedBox(height: 60),
            SizedBox(
              width: Get.width,
              height: 40,
              child: MaterialButton(
                color: Colors.amber,
                onPressed: () {},
                child: const TextView(
                  title: 'Save changes',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
