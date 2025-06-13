import 'package:ecommerce_app/components/drawer_tile.dart';
import 'package:ecommerce_app/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeProvider themeProvider =
        Provider.of<ThemeProvider>(context, listen: false);
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(style: BorderStyle.solid),
      ),
      child: SingleChildScrollView(
        child: Column(
          // Wrap content in a Column
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Logo section
            Column(
              children: [
                DrawerHeader(
                  child: Image.asset(
                    'assets/images/Nike-Logo-PNG-Clipart.png',
                    color: Colors.black,
                  ),
                ),

                // Divider - keeping it but removing the line below the logo itself
                Divider(
                  color: Colors.grey[800],
                ),

                // Menu items
                DrawerTile(
                  icon: Icons.home_outlined,
                  text: 'Home',
                  onTap: () {},
                  trailing: const SizedBox.shrink(),
                ),
                DrawerTile(
                  icon: Icons.info_outline,
                  text: 'About Us',
                  onTap: () {},
                  trailing: const SizedBox.shrink(),
                ),
                DrawerTile(
                  icon: Icons.settings_outlined,
                  text: 'Settings',
                  onTap: () {},
                  trailing: const SizedBox.shrink(),
                ),
                DrawerTile(
                  icon: Icons.nightlight_outlined,
                  text: 'NightMode',
                  onTap: () {},
                  trailing: Switch(
                      value: themeProvider.isDarkMode,
                      onChanged: (value) => themeProvider.toggleTheme()),
                ),
              ],
            ),
            DrawerTile(
              icon: Icons.logout_outlined,
              text: 'Log Out',
              onTap: () {},
              trailing: const SizedBox.shrink(),
            ),
          ],
        ),
      ),
    );
  }
}
