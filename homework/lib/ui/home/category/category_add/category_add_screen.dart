import 'dart:io';

import 'package:flutter/material.dart';
import 'package:homework/ui/home/category/category_event.dart';
import 'package:homework/ui/home/category/category_view_model.dart';
import 'package:image_picker/image_picker.dart';
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

    final ImagePicker _picker = ImagePicker();
    XFile? file;

    if (state.sharedFiles.isNotEmpty) {
      return Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[
              Image.file(File(state.sharedFiles.first.path)),
              ElevatedButton(
                onPressed: () {
                  viewModel.onEvent(
                    CategoryEvent.saveCategory(state.sharedFiles.first.path),
                  );
                  Navigator.pop(context);
                },
                child: const Text('등록'),
              )
            ],
          ),
        ),
      );
    } else {
      return Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                if (state.imagePickerFileList.isNotEmpty)
                  Image.file(
                    File(state.imagePickerFileList.first.path),
                  ),
                if (state.imagePickerFileList.isEmpty)
                  ElevatedButton(
                    onPressed: () async {
                      file =
                          await _picker.pickImage(source: ImageSource.gallery);
                      List<XFile> files = [];
                      files.add(file!);
                      viewModel
                          .onEvent(CategoryEvent.getImagePickerFileList(files));
                    },
                    child: const Text('이미지 선택하기'),
                  ),
                ElevatedButton(
                  onPressed: () {
                    viewModel.onEvent(
                      CategoryEvent.saveCategory(
                          state.imagePickerFileList.first.path),
                    );
                    Navigator.pop(context);
                  },
                  child: const Text('등록'),
                )
              ],
            ),
          ),
        ),
      );
    }
  }
}
