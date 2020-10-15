
import 'package:flutter/widgets.dart';

import '../presentation/social_icons.dart';
import 'types.dart';

Widget getIcon(Buttons button) {
  switch(button) {
    case Buttons.Apple:
      return Icon(SocialIcons.apple);
    case Buttons.Facebook:
      return Icon(SocialIcons.facebook);
    case Buttons.GitHub:
      return Icon(SocialIcons.github);
    default:
      return null;
  }
}

Widget getIconChild({
  Buttons button,
  EdgeInsets innerPadding,
}) {
  return Padding(
    padding: innerPadding ?? EdgeInsets.only(
      right: 12,
    ),
    child: getIcon(button),
  );
}