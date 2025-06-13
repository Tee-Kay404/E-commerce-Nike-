import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  final IconData icon;
  final String text;
  final void Function()? onTap;
  final Widget trailing;
  const DrawerTile(
      {super.key,
      required this.icon,
      required this.text,
      required this.onTap,
      required this.trailing});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
      child: ListTile(
        leading: Icon(icon),
        title: Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        trailing: trailing,
        onTap: () {},
        // isThreeLine: false,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: const BorderSide(
              width: 1,
              style: BorderStyle.solid,
            )),
      ),
    );
  }
}
