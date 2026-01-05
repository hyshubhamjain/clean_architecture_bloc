abstract class AuthRepo {
  Future<void> signOut();
  Future<String?> getCurrentUserId();
  Future<void> sendPasswordResetEmail(String email);
  Future<void> createUserWithEmailAndPassword(String email, String password);
  Future<void> signInWithEmailAndPassword(String email, String password);
}