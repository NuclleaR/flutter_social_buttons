import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

import 'utils.dart';
import 'types.dart';

class CupertinoSocialButton extends StatelessWidget {
  final int id;
  final Function(int id) onPressed;
  final Color color;
  final Color textColor;
  final Color iconColor;
  final Color disabledColor;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry innerPadding;
  final double minSize;
  final double pressedOpacity;
  final BorderRadius borderRadius;
  final Buttons button;
  final String label;
  final TextAlignment textAlignment;

  final Color _black = Color.fromARGB(255, 0, 0, 0);
  final Color _white = Color.fromARGB(255, 255, 255, 255);

  CupertinoSocialButton({
    Key key,
    this.id,
    this.label,
    this.padding = const EdgeInsets.symmetric(
      vertical: 14.0,
      horizontal: 24.0,
    ),
    this.innerPadding,
    this.disabledColor = CupertinoColors.quaternarySystemFill,
    this.color,
    this.textColor,
    this.minSize = kMinInteractiveDimensionCupertino,
    this.pressedOpacity = 0.4,
    this.borderRadius = const BorderRadius.all(Radius.circular(8.0)),
    this.textAlignment = TextAlignment.start,
    this.iconColor,
    @required this.button,
    @required this.onPressed,
  });

  static Map<Buttons, Color> _colors = {
    Buttons.Apple: Color.fromARGB(255, 166, 177, 183),
    Buttons.Facebook: Color.fromARGB(255, 24, 119, 242),
    Buttons.GitHub: Color.fromARGB(255, 37, 41, 46),
    Buttons.LinkedIn: Color.fromARGB(255, 0, 119, 181),
    Buttons.Twitter: Color.fromARGB(255, 29, 161, 242),
    Buttons.Pinterest: Color.fromARGB(255, 189, 8, 28),
    Buttons.Email: Color.fromARGB(255, 164, 198, 57),
    Buttons.Microsoft: Color.fromARGB(255, 243, 80, 34),
    Buttons.VK: Color.fromARGB(255, 74, 118, 168),
    Buttons.Google: Color.fromARGB(255, 66, 133, 244),
    Buttons.Twitch: Color.fromARGB(255, 145, 70, 255),
  };

  static Color getColor(Buttons button) {
    return _colors[button];
  }

  _handlePress() {
    this.onPressed(this.id);
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: _handlePress,
      minSize: this.minSize,
      color: this.color ?? _colors[this.button],
      disabledColor: this.disabledColor,
      padding: this.padding,
      key: this.key,
      borderRadius: this.borderRadius,
      pressedOpacity: this.pressedOpacity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: this.textAlignment.alignment,
        children: [
          getIconChild(button: this.button, innerPadding: this.innerPadding, color: this.iconColor),
          Text(
            this.label ?? describeEnum(this.button),
            style: TextStyle(
                color: textColor ??
                    (this.button == Buttons.Apple ? _black : _white)),
          )
        ],
      ),
    );
  }
}
