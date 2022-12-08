import 'package:alloy/packages.dart';

class TextFormWidget extends StatelessWidget {
  const TextFormWidget(
      {Key? key,
      this.controller,
      this.hint,
      this.label,
      this.textInputType,
      this.prefixIcon,
      this.enabled})
      : super(key: key);

  final TextEditingController? controller;
  final TextInputType? textInputType;
  final String? hint;
  final String? label;
  final IconData? prefixIcon;
  final bool? enabled;

  @override
  Widget build(BuildContext context) {
    RxBool obsStatus = true.obs;
    if (label!.toLowerCase().contains('password')) {
      return Obx(
        () => TextFormField(
          obscureText: obsStatus.value,
          controller: controller,
          keyboardType: textInputType,
          decoration: InputDecoration(
              hintText: label,
              prefixIcon: Icon(prefixIcon),
              border: const UnderlineInputBorder(),
              suffixIcon: !label!.toLowerCase().contains('password')
                  ? null
                  : IconButton(
                      splashColor: Colors.transparent,
                      onPressed: () {
                        obsStatus.toggle();
                      },
                      icon: Obx(
                        () => Icon(obsStatus.isTrue
                            ? Icons.visibility_off
                            : Icons.visibility),
                      )),
              enabled: enabled ?? true,
              focusColor: Colors.green[400]),
        ),
      );
    }
    return TextFormField(
      obscureText: false,
      controller: controller,
      keyboardType: textInputType,
      decoration: InputDecoration(
          hintText: label,
          prefixIcon: Icon(prefixIcon),
          border: UnderlineInputBorder(),
          enabled: enabled ?? true,
          focusColor: Colors.green[400]),
    );
  }
}
