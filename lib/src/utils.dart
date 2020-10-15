import 'package:flutter/widgets.dart';

import '../presentation/social_icons.dart';
import 'types.dart';

Map<Buttons, IconData> icons = {
  Buttons.Apple: SocialIcons.apple,
  Buttons.Facebook: SocialIcons.apple,
  Buttons.GitHub: SocialIcons.github,
  Buttons.LinkedIn: SocialIcons.linkedin,
  Buttons.Twitter: SocialIcons.twitter,
  Buttons.Pinterest: SocialIcons.pinterest,
  Buttons.Email: SocialIcons.mail_alt,
  Buttons.Microsoft: SocialIcons.windows,
  Buttons.VK: SocialIcons.vk,
  Buttons.Google: SocialIcons.google,
  Buttons.Twitch: SocialIcons.twitch,
};

Widget getIcon(Buttons button, Color color) {
  Color iconColor =
      color ??
          (button == Buttons.Apple ?
            const Color(0xFF171717) :
            const Color(0xFFFFFFFF)
          );

  return Icon(icons[button], color: iconColor);
}

Widget getIconChild({
  Buttons button,
  EdgeInsets innerPadding,
  Color color,
}) {
  return Padding(
    padding: innerPadding ?? EdgeInsets.only(
      right: 12,
    ),
    child: getIcon(button, color),
  );
}