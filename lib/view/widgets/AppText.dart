import 'package:flutter/cupertino.dart';
import 'constants.dart';

class AppText extends StatefulWidget {
  var Color, Font_style, Title, Weight;
  double Size;

  AppText({
    Key? key,
    this.Color = TextColor,
    this.Font_style = "Montserrat",
    this.Size = 14,
    this.Weight = FontWeight.w500,
    required this.Title,
  }) : super(key: key);

  @override
  State<AppText> createState() => _AppTextState();
}

class _AppTextState extends State<AppText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.Title,
      style: TextStyle(
        color: widget.Color,
        fontFamily: widget.Font_style,
        fontSize: widget.Size,
        fontWeight: widget.Weight,
      ),
    );
  }
}
