import 'package:firebase_auth/firebase_auth.dart';

class FireBaseHelper {
  FirebaseAuth _auth = FirebaseAuth.instance;
  Future<dynamic> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (userCredential.user != null) {
        return userCredential.user;
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        return 'Wrong password provided for that user.';
      } else if (e.code == 'invalid-email') {
        return 'The email address is badly formatted.';
      } else if (e.code == 'operation-not-allowed') {
        return 'Operation not allowed.';
      } else if (e.code == 'user-disabled') {
        return 'User disabled.';
      } else if (e.code == 'too-many-requests') {
        return 'Too many requests. Try again later.';
      } else if (e.code == 'network-request-failed') {
        return 'Network request failed. Check your internet connection.';
      } else if (e.code == 'timeout') {
        return 'Request timed out. Please try again.';
      } 
      else if (e.code == 'invalid-credential') {
        return 'Invalid credential provided.';
      } else if (e.code == 'operation-not-supported-in-this-environment') {
        return 'Operation not supported in this environment.';
      } else if (e.code == 'missing-android-pkg-name') {
        return 'Missing Android package name.';
      } else if (e.code == 'missing-ios-bundle-id') {
        return 'Missing iOS bundle ID.';
      } else if (e.code == 'missing-app-credential') {
        return 'Missing app credential.';
      } else if (e.code == 'invalid-app-credential') {
        return 'Invalid app credential.';
      } else if (e.code == 'app-not-authorized') {
        return 'App not authorized to use Firebase Authentication.';
      }
    }}

  Future<dynamic> signUpWithEmailAndPassword(
    String email,
    String password,
    String name,
  ) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);
      await userCredential.user?.updateDisplayName(name);
      await userCredential.user?.reload();
      if (userCredential.user != null) {
        return userCredential.user;
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return 'The password provided is too weak.';
      } else if (e.code == 'email-already-in-use') {
        return 'The account already exists for that email.';
      } else if (e.code == 'invalid-email') {
        return 'The email address is badly formatted.';
      } else if (e.code == 'operation-not-allowed') {
        return 'Operation not allowed.';
      } else if (e.code == 'user-disabled') {
        return 'User disabled.';
      } else if (e.code == 'user-not-found') {
        return 'User not found.';
      } else if (e.code == 'wrong-password') {
        return 'Wrong password provided for that user.';
      } else if (e.code == 'too-many-requests') {
        return 'Too many requests. Try again later.';
      } else if (e.code == 'network-request-failed') {
        return 'Network request failed. Check your internet connection.';
      } else if (e.code == 'timeout') {
        return 'Request timed out. Please try again.';
      } else if (e.code == 'invalid-credential') {
        return 'Invalid credential provided.';
      } else if (e.code == 'operation-not-supported-in-this-environment') {
        return 'Operation not supported in this environment.';
      } else if (e.code == 'missing-android-pkg-name') {
        return 'Missing Android package name.';
      } else if (e.code == 'missing-ios-bundle-id') {
        return 'Missing iOS bundle ID.';
      } else if (e.code == 'missing-app-credential') {
        return 'Missing app credential.';
      } else if (e.code == 'invalid-app-credential') {
        return 'Invalid app credential.';
      } else if (e.code == 'app-not-authorized') {
        return 'App not authorized to use Firebase Authentication.';
      }
    }
  }
  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      print('Error signing out: $e');
    }
  }
}
