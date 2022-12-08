import 'package:alloy/packages.dart';
import 'package:google_fonts/google_fonts.dart';

class TextView extends StatelessWidget {
  const TextView(
      {Key? key,
      this.title,
      this.fontSize,
      this.fontWeight,
      this.fontStyle,
      this.color,
      this.textAlign})
      : super(key: key);

  final String? title;
  final double? fontSize;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final Color? color;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      title ?? "Empty Text",
      style: GoogleFonts.poppins(
        color: color ?? Colors.black,
        fontSize: fontSize ?? 12,
        fontWeight: fontWeight ?? FontWeight.w400,
        fontStyle: fontStyle ?? FontStyle.normal,
      ),
      textAlign: textAlign ?? TextAlign.start,
    );
  }
}
