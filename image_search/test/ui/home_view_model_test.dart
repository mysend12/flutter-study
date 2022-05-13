import 'package:flutter_test/flutter_test.dart';
import 'package:image_search/data/photo_api_repository.dart';
import 'package:image_search/model/photo.dart';
import 'package:image_search/ui/home_view_model.dart';

void main() {

  test('Stream이 잘 동작하는지 확인', () async {
    final viewModel = HomeViewModel(FakePhotoApiRepository());

    await viewModel.fetch('apple');
    await viewModel.fetch('iphon');
    final result = fakeJson.map((e) => Photo.fromJson(e)).toList();

    expect(
      viewModel.photoStream,
      emitsInOrder([
        equals([]),
        equals(result),
        equals(result),
      ])
    );
  });
}

class FakePhotoApiRepository extends PhotoApiRepository {
  @override
  Future<List<Photo>> fetch(String query) async{
    Future.delayed(const Duration(milliseconds: 500));

    return fakeJson.map((e) => Photo.fromJson(e)).toList();
  }
}

List<Map<String, dynamic>> fakeJson = [
  {
    "id": 2295434,
    "pageURL": "https://pixabay.com/photos/spring-bird-bird-tit-spring-blue-2295434/",
    "type": "photo",
    "tags": "spring bird, bird, tit",
    "previewURL": "https://cdn.pixabay.com/photo/2017/05/08/13/15/spring-bird-2295434_150.jpg",
    "previewWidth": 150,
    "previewHeight": 99,
    "webformatURL": "https://pixabay.com/get/g27a291b682c60d766407391caea6bc4528f49249fd3881ec976602d211d733917fc04532f7487c85031a5f2519dc56b08b57fd0dd69c8ffe9beddcca8c1287c3_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 426,
    "largeImageURL": "https://pixabay.com/get/g2eab3c220fb29c63c0380afaa401f171cb10918ddcef9882105b4828804e22b36b9856a585ca363fde8cd6ca9f33c5c1b489606c7d196048658fb1944abede00_1280.jpg",
    "imageWidth": 5363,
    'imageHeight': 3575,
    "imageSize": 2938651,
    'views': 477425,
    'downloads': 254083,
    'collections': 9253,
    'likes': 1827,
    'comments': 217,
    'user_id': 334088,
    'user': "JillWellington",
    'userImageURL': "https://cdn.pixabay.com/user/2018/06/27/01-23-02-27_250x250.jpg"
  },
];