import 'package:flutter/material.dart';
import 'package:homework/ui/home/category/category_list/components/category_card.dart';
import 'package:homework/ui/home/home_event.dart';
import 'package:homework/ui/home/home_view_model.dart';
import 'package:provider/provider.dart';

class CategoryListScreen extends StatelessWidget {
  const CategoryListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HomeViewModel>();
    final state = viewModel.state;

    final colorList = [
      Theme.of(context).colorScheme.primaryContainer,
      Theme.of(context).colorScheme.secondaryContainer,
      Theme.of(context).colorScheme.tertiaryContainer,
      Theme.of(context).colorScheme.errorContainer,
    ];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
        itemCount: state.categories.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 120,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
        ),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              viewModel.onEvent(HomeEvent.removeCategory(state.categories[index]));
            },
            child: CategoryCard(
              color: colorList[state.categories[index].color],
              title: state.categories[index].title,
            ),
          );
        },
      ),
    );
  }
}
