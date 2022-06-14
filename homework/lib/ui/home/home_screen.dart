import 'package:flutter/material.dart';
import 'package:homework/ui/home/category/category_add/category_add_screen.dart';
import 'package:homework/ui/home/category/category_list/category_list_screen.dart';
import 'package:homework/ui/home/favorite/favorite_screen.dart';
import 'package:homework/ui/home/home_event.dart';
import 'package:homework/ui/home/home_view_model.dart';
import 'package:provider/provider.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HomeViewModel>();
    final state = viewModel.state;

    Future.delayed(const Duration(seconds: 1), () {
      ReceiveSharingIntent.getMediaStream().listen(
              (List<SharedMediaFile> value) {
            if (value.isNotEmpty) {
              viewModel.onEvent(HomeEvent.getSharedFiles(value));
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const CategoryAddScreen()));
            }
          }, onError: (err) {
        print("getIntentDataStream error: $err");
      });
    });

    return Scaffold(
      appBar: state.showAppBar
          ? AppBar(
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
            )
          : PreferredSize(
              preferredSize: const Size(0.0, 0.0),
              child: Container(),
            ),
      bottomNavigationBar: state.showBottomNavigationBar
          ? BottomNavigationBar(
              currentIndex: state.index,
              onTap: (index) => {
                viewModel.onEvent(HomeEvent.changeBottomNavigationIndex(index))
              },
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
            )
          : Container(),
      body: AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          child: state.index == 0
              ? const CategoryListScreen()
              : const FavoriteScreen()),
      floatingActionButton: state.showFloatingActionButton
          ? FloatingActionButton(
              onPressed: () {
                if (state.index == 0) {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => const CategoryAddScreen()));
                } else if (state.index == 1) {
                  // TODO Move Favorite Add Screen
                }
              },
              child: const Icon(Icons.add),
            )
          : Container(),
    );
  }
}
