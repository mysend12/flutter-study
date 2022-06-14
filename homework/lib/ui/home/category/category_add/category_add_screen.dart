import 'dart:io';

import 'package:flutter/material.dart';
import 'package:homework/ui/home/home_event.dart';
import 'package:homework/ui/home/home_view_model.dart';
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
      Provider.of<HomeViewModel>(context, listen: false).onEvent(HomeEvent.getSharedFiles(value));
    }, onError: (err) {
      print("getIntentDataStream error: $err");
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HomeViewModel>();
    final state = viewModel.state;

    if (state.sharedFiles.isNotEmpty) {
      return Center(
        child: Column(
          children: <Widget>[
            Image.file(File(state.sharedFiles.first.path)),
          ],
        ),
      );
    } else {
      return const Center(
        child: Text('nothing!'),
      );
    }
  }
}
