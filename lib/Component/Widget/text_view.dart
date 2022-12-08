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
      this.textAlign,
      this.letterSpacing})
      : super(key: key);

  final String? title;
  final double? fontSize;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final Color? color;
  final TextAlign? textAlign;
  final double? letterSpacing;

  @override
  Widget build(BuildContext context) {
    return Text(
      title ?? "Empty Text",
      style: GoogleFonts.poppins(
          color: color ?? Colors.black,
          fontSize: fontSize ?? 12,
          fontWeight: fontWeight ?? FontWeight.w400,
          fontStyle: fontStyle ?? FontStyle.normal,
          letterSpacing: letterSpacing ?? 0),
      textAlign: textAlign ?? TextAlign.start,
    );
  }
}
