import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_items.dart';
import 'package:widgets_app/presentation/screens/buttons/buttons_screen.dart';
import 'package:widgets_app/presentation/screens/cards/cards_screen.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'Home_ Screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter + Material 3'),
        ),
        body: _HomeView());
  }
}

class _HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ListView.builder(
        itemCount: appMenuItems.length,
        itemBuilder: (BuildContext context, int index) {
          final menuItem = appMenuItems[index];
          return _CustomListTile(menuItem: menuItem);
        },
      );
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ListTile(
        title: Text(menuItem.title),
        subtitle: Text(menuItem.subtitle),
        leading: Icon(
          menuItem.icon,
          color: colors.primary,
        ),
        trailing: Icon(Icons.keyboard_arrow_right, color: colors.primary),
        onTap: () {
          //Navigator.of(context).push(
          // MaterialPageRoute(
          //  builder:(context) => const ButtonsScreen(),
          // ),
          //);
          //context.pushNamed(ButtonsScreen.name);
          context.push(menuItem.link);
        });
  }
}
