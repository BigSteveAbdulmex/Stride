import 'package:firebase_auth/firebase_auth.dart';
import 'package:stride/features/authentication/domain/repositories/auth_repository.dart';

class SignUpUseCase {
  final AuthRepository repository;

  SignUpUseCase(this.repository);

  Future<User?> call(String email, String password) async {
    return repository.signUp(email, password);
  }
}
