import 'package:flutter_note_app/domain/model/note.dart';
import 'package:flutter_note_app/domain/repository/i_note_repository.dart';

class GetNotes {
  final INoteRepository repository;

  GetNotes(this.repository);

  Future<List<Note>> call() async {
    List<Note> notes = await repository.getNotes();
    return notes;
  }
}