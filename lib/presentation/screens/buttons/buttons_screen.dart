import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'Buttons_Screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop();
        },
        child: const Icon(Icons.arrow_back_ios),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: 10,
        children: [
          FilledButton(onPressed: () {}, child: const Text('Filled')),
          ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
          FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.account_circle),
              label: const Text('Filled Icon')),
          OutlinedButton(onPressed: () {}, child: const Text('outLine')),
          OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add_alarm),
              label: const Text('outLine Icon')),
          TextButton(onPressed: () {}, child: const Text('Text button')),
          TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add_call),
              label: const Text('text icon')),
              const CustomButton(),
          IconButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(colors.primary),
                  iconColor: const MaterialStatePropertyAll(Colors.white)),
              onPressed: () {},
              icon: const Icon(Icons.add_to_queue_rounded)),
          IconButton.filledTonal(
              onPressed: () {}, icon: const Icon(Icons.ads_click_sharp)),
        ],
      ),
    );
  }
}


class CustomButton extends StatelessWidget {
  const CustomButton({super.key});
   
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return  ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child:  const Padding(padding:  EdgeInsets.symmetric(vertical: 12 , horizontal: 15),
          child: Text('Personalizado'),
          ),
        ),
      ),
    );
  }
}