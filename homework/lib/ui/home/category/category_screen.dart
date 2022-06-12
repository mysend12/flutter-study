import 'package:flutter/material.dart';
import 'package:homework/ui/home/category/components/category_card.dart';
import 'package:homework/ui/home/home_event.dart';
import 'package:homework/ui/home/home_view_model.dart';
import 'package:provider/provider.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HomeViewModel>();
    final state = viewModel.state;
    final TextEditingController _controller = TextEditingController();

    final colorList = [
      Theme.of(context).colorScheme.primaryContainer,
      Theme.of(context).colorScheme.secondaryContainer,
      Theme.of(context).colorScheme.tertiaryContainer,
      Theme.of(context).colorScheme.errorContainer,
    ];

    return Column(
      children: [
        Expanded(
          flex: 7,
          child: Padding(
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
          ),
        ),
        Expanded(
          flex: 1,
          child: TextField(
            controller: _controller,
            onSubmitted: (text) {
              viewModel.onEvent(HomeEvent.saveCategory(text));
            },
          ),
        ),
      ],
    );
  }
}
