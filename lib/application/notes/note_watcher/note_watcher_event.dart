part of 'note_watcher_bloc.dart';

@freezed
abstract class NoteWatcherEvent with _$NoteWatcherEvent {
  const factory NoteWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory NoteWatcherEvent.watchUncompletedStarted() =
      _WatchUncompletedStarted;
  // A sort of "hack" to make it possible to switch the stream between all of the notes and uncompleted ntoes.
  // This basically lets us stop "paying attention" to a stream, so we can pay attention to a different one.
  const factory NoteWatcherEvent.notesReceived(
      Either<NoteFailure, KtList<Note>> failureOrNotes) = _NotesReceived;
}
