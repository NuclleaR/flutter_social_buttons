import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

import 'utils.dart';
import 'types.dart';

class CupertinoSocialButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color color;
  final Color disabledColor;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry innerPadding;
  final double minSize;
  final double pressedOpacity;
  final BorderRadius borderRadius;
  final Buttons button;
  final String label;
  final TextAlignment textAlignment;

  CupertinoSocialButton({
    Key key,
    this.label,
    this.padding = const EdgeInsets.symmetric(
      vertical: 14.0,
      horizontal: 24.0,
    ),
    this.innerPadding,
    this.disabledColor = CupertinoColors.quaternarySystemFill,
    this.color,
    this.minSize = kMinInteractiveDimensionCupertino,
    this.pressedOpacity = 0.4,
    this.borderRadius = const BorderRadius.all(Radius.circular(8.0)),
    this.textAlignment = TextAlignment.start,
    @required this.button,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: this.onPressed,
      minSize: this.minSize,
      color: this.color,
      disabledColor: this.disabledColor,
      padding: this.padding,
      key: this.key,
      borderRadius: this.borderRadius,
      pressedOpacity: this.pressedOpacity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: this.textAlignment.alignment,
        children: [
          getIconChild(
              button: this.button,
              innerPadding: this.innerPadding
          ),
          Text(this.label ?? describeEnum(this.button))
        ],
      ),
    );
  }


}
