import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_flutter_app/constants.dart';

class HomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  final AppBar appBar = AppBar();

  final Function onMenuPress;
  final Function onSearchPress;

  HomeAppbar({Key key, this.onMenuPress, this.onSearchPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        'Lviv',
        style: TextStyle(
            color: cText,
            fontSize: 19,
            fontFamily: 'Google Sans',
            fontWeight: FontWeight.bold),
      ),
      elevation: 0.0,
      leading: IconButton(
          icon: SvgPicture.asset('$iconsPath/menu-icon.svg'),
          onPressed: this.onMenuPress),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset('$iconsPath/search-icon.svg'),
          onPressed: this.onSearchPress,
        )
      ],
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}
