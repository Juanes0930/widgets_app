import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/buttons/buttons_screen.dart';
import 'package:widgets_app/presentation/screens/cards/cards_screen.dart';
import 'package:widgets_app/presentation/screens/home/home_screens.dart';

// To create the routes by name, inside the go_router , we add the name parameter.
final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      //name: HomeScreen.name,
      builder: (context, state) =>const HomeScreen(),
    ),
    GoRoute(
      path: '/buttons',
      //name: ButtonsScreen.name,
      builder: (context, state) =>const ButtonsScreen(),
    ),
    GoRoute(
      path: '/cards',
      //name: CardsScreen.name,
      builder: (context, state) =>const CardsScreen(),
    ),
  ],
);

