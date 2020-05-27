import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notes_firebase_ddd_course/domain/core/value_objects.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({
    @required UniqueId id,
  }) = _User;
}

//! Unique -> can satifisy really with any unique id used in infrastructure layer solutions like below.
// Firestore
// SQLite
// Hive Objects
