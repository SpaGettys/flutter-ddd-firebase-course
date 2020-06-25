import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:notes_firebase_ddd_course/domain/notes/note_failure.dart';

import 'note.dart';

abstract class INoteRespository {
  // watch notes
  Stream<Either<NoteFailure, KtList<Note>>> watchAll();
  // watch uncompleted notes
  Stream<Either<NoteFailure, KtList<Note>>> watchUncompleted();
  // CUD (the R[EAD] part is already coverd by the watch method definitions above.)
  Future<Either<NoteFailure, Unit>> create(Note note);
  Future<Either<NoteFailure, Unit>> update(Note note);
  Future<Either<NoteFailure, Unit>> delete(Note note);
}
