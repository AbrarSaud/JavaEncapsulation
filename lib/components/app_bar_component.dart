



import 'package:athkar_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppBarComponent extends StatelessWidget  implements PreferredSizeWidget {
  const AppBarComponent({
    super.key, required this.title,
  });
  final String title;
   Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: white,
      centerTitle: true,
      elevation: 0,
      title: Text(
       title,
        style: TextStyle(color: primary),
      ),
    );
  }
}
