import 'package:flutter_note_app/domain/model/note.dart';
import 'package:flutter_note_app/domain/repository/i_note_repository.dart';

class AddNote {
  final INoteRepository repository;

  AddNote(this.repository);

  Future<void> call(Note note) async {
    await repository.insertNote(note);
  }
}