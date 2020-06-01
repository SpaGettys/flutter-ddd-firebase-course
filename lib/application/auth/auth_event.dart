part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authCeckRequested() = AuthCeckRequested;
  const factory AuthEvent.signedOut() = SignedOut;
}
