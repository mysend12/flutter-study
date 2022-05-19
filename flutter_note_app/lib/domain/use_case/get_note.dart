import 'package:flutter_note_app/domain/model/note.dart';
import 'package:flutter_note_app/domain/repository/i_note_repository.dart';

class GetNote {
  final INoteRepository repository;

  GetNote(this.repository);

  Future<Note?> call(int id) async {
    return await repository.getNoteById(id);
  }
}