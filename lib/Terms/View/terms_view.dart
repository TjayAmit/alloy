import 'package:alloy/Component/Widget/text_form_widget.dart';
import 'package:alloy/packages.dart';

class TermsView extends GetView<AuthController> {
  const TermsView({Key? key}) : super(key: key);

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
          title: 'Terms',
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
            child: const Center(
              child: TextView(title: 'Terms'),
            )),
      ),
    );
  }
}
