import 'package:flutter/material.dart';
import 'package:homework/ui/home/category/category_screen.dart';
import 'package:homework/ui/home/favorite/favorite_screen.dart';
import 'package:homework/ui/home/home_event.dart';
import 'package:homework/ui/home/home_view_model.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HomeViewModel>();
    final state = viewModel.state;
    return Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              state.subject,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          leadingWidth: 300,
          backgroundColor: Theme.of(context).colorScheme.background,
          shadowColor: Colors.white,
          elevation: 5.0,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: state.index,
          onTap: (index) =>
              {viewModel.onEvent(HomeEvent.changeBottomNavigationIndex(index))},
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.category,
                color: Theme.of(context).colorScheme.primaryContainer,
              ),
              label: 'Categories',
              activeIcon: Icon(
                Icons.category,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: Theme.of(context).colorScheme.primaryContainer,
              ),
              label: 'Favorites',
              activeIcon: Icon(
                Icons.favorite,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ],
        ),
        body: AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          child: state.index == 0 ? const CategoryScreen() : const FavoriteScreen()),
        );
  }
}
