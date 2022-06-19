import 'dart:io';

import 'package:flutter/material.dart';
import 'package:homework/ui/home/category/category_event.dart';
import 'package:homework/ui/home/category/category_view_model.dart';
import 'package:provider/provider.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';

class CategoryAddScreen extends StatefulWidget {
  const CategoryAddScreen({Key? key}) : super(key: key);

  @override
  State<CategoryAddScreen> createState() => _CategoryAddScreenState();
}

class _CategoryAddScreenState extends State<CategoryAddScreen> {
  @override
  void initState() {
    ReceiveSharingIntent.getMediaStream().listen((List<SharedMediaFile> value) {
      Provider.of<CategoryViewModel>(context, listen: false)
          .onEvent(CategoryEvent.getSharedFiles(value));
    }, onError: (err) {
      print("getIntentDataStream error: $err");
    });

    ReceiveSharingIntent.reset();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<CategoryViewModel>();
    final state = viewModel.state;

    if (state.sharedFiles.isNotEmpty) {
      return Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[
              Image.file(File(state.sharedFiles.first.path)),
              ElevatedButton(
                onPressed: () {
                  viewModel.onEvent(CategoryEvent.saveCategory(state.sharedFiles.first.path));
                  Navigator.pop(context);
                },
                child: const Text('등록'),
              )
            ],
          ),
        ),
      );
    } else {
      return const Scaffold(
        body: Center(
          child: Text('nothing!'),
        ),
      );
    }
  }
}
