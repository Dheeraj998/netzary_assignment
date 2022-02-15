import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color iconColor;
  const DrawerTile({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: iconColor,
      ),
      title: Text(title),
      subtitle: Text(
        subtitle,
        style: TextStyle(
            fontWeight: FontWeight.w200, color: Colors.white, fontSize: 12),
      ),
      trailing: Icon(
        Icons.arrow_right,
        color: Colors.white,
      ),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}
