import 'package:firebase_auth/firebase_auth.dart';
import 'package:stride/features/authentication/domain/repositories/auth_repository.dart';

class LoginUseCase {
  final AuthRepository repository;

  LoginUseCase(this.repository);

  Future<User?> call(String email, String password) async {
    return repository.login(email, password);
  }
}
