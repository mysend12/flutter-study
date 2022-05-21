import 'package:flutter_note_app/domain/model/note.dart';
import 'package:flutter_note_app/domain/repository/i_note_repository.dart';
import 'package:flutter_note_app/domain/use_case/get_notes_use_case.dart';
import 'package:flutter_note_app/domain/util/note_order.dart';
import 'package:flutter_note_app/domain/util/order_type.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'get_notes_use_case_test.mocks.dart';

@GenerateMocks([INoteRepository])
void main() {
  test('정렬 기능이 잘 동작하는지 확인', () async {
    final repository = MockINoteRepository();
    final useCase = GetNotesUseCase(repository);

    when(repository.getNotes()).thenAnswer((_) async => [
          Note(
            title: 'title',
            content: 'content',
            color: 0,
            timestamp: 0,
          ),
          Note(
            title: 'title1',
            content: 'content1',
            color: 1,
            timestamp: 1,
          ),
          Note(
            title: 'title2',
            content: 'content2',
            color: 2,
            timestamp: 2,
          ),
        ]);

    List<Note> result = await useCase(const NoteOrder.date(OrderType.descending()));
    expect(result, isA<List<Note>>());
    verify(repository.getNotes());

    expect(result.first.timestamp, 2);

    result = await useCase(const NoteOrder.date(OrderType.ascending()));
    expect(result.first.timestamp, 0);
    verify(repository.getNotes());

    verifyNoMoreInteractions(repository);
  });
}
