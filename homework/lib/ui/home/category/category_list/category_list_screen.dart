import 'dart:io';

import 'package:flutter/material.dart';
import 'package:homework/ui/home/category/category_add/category_add_screen.dart';
import 'package:homework/ui/home/category/category_event.dart';
import 'package:homework/ui/home/category/category_view_model.dart';
import 'package:provider/provider.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';

class CategoryListScreen extends StatelessWidget {
  const CategoryListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<CategoryViewModel>();
    final state = viewModel.state;

    Future.delayed(const Duration(seconds: 1), () {
      ReceiveSharingIntent.getMediaStream().listen(
              (List<SharedMediaFile> value) {
            if (value.isNotEmpty) {
              viewModel.onEvent(CategoryEvent.getSharedFiles(value));
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const CategoryAddScreen()));
            }
          }, onError: (err) {
        print("getIntentDataStream error: $err");
      });
    });

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
              viewModel.onEvent(CategoryEvent.removeCategory(state.categories[index]));
            },
            child: Image.file(File(state.categories[index].title)),
          );
        },
      ),
    );
  }
}
