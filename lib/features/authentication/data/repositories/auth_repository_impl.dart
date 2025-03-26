import 'package:firebase_auth/firebase_auth.dart';

import 'package:stride/features/authentication/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Sign up
  @override
  Future<User?> signup(String email, String password) async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } catch (e) {
      throw Exception("Signup failed: $e");
    }
  }

  // Login
  @override
  Future<User?> login(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return userCredential.user;
    } catch (e) {
      throw Exception("Login failed: $e");
    }
  }

  // Logout
  @override
  Future<User?> logout() async {
    await _auth.signOut();
  }

  //Get the current user
  @override
  Future<User?> getCurrentUser() async {
    return _auth.currentUser;
  }
}
