import 'package:chatonce/themes/themeProvider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
        title: Text('Settings', style: TextStyle(color: Theme.of(context).colorScheme.tertiary),),
    backgroundColor: Theme.of(context).colorScheme.secondary,
    foregroundColor: Colors.grey,
    elevation: 0,
    iconTheme: const IconThemeData(color: Colors.white),
    ),
      body: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(12),
        ),
        margin: const EdgeInsets.all(24),
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Black Mode',style: TextStyle(color: Theme.of(context).colorScheme.tertiary),),
            CupertinoSwitch(
                value: Provider.of<ThemeProvider>(context, listen: false).isDarkMode,
                onChanged: (value) =>Provider.of<ThemeProvider>(context, listen: false).toggleTheme(),
            ),
          ],
        ),
      ),
    );
  }
}
