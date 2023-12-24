import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'dto/count_dto.dart';

class CountState {
  CountState({required this.countDto, required ref}) : _ref = ref;
  final ProviderRef<CountState> _ref;
  final CountDto countDto;

  CountState copyWith({CountDto? countDto}) {
    CountState newState =
        CountState(countDto: countDto ?? this.countDto, ref: _ref);
    _ref.state = newState;

    return _ref.state;
  }
}
