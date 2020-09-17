import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor = Colors.red;
  final Text title;
  final AppBar appBar;
  final List<Widget> widgets;

  const HomeAppbar({Key key, this.title, this.appBar, this.widgets})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: this.backgroundColor,
      elevation: 0.0,
      leading: IconButton(
        icon: SvgPicture.asset('assets/menu-icon.svg'),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset('assets/search-icon.svg'),
          onPressed: () {},
        )
      ],
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}
