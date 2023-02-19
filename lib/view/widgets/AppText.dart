import 'package:flutter/cupertino.dart';
import 'constants.dart';

class AppText extends StatelessWidget {
  var Color, Font_style, Size, Title, Weight;
  AppText({Key? key,
    this.Color = TextColor,
    this.Font_style = "Montserrat",
    this.Size = 14,
    this.Weight = FontWeight.w500,
    required this.Title,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(Title,
    style: TextStyle(
      color: Color,
      fontFamily: Font_style,
      fontSize: Size,
      fontWeight: Weight,
    ),
    );
  }
}
