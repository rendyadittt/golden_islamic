import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthServices {
  static FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  // Future<User> signInEmail(String email, String password) async {
  //   var userCredential = await firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
  //   return userCredential.user;
  // }

  static GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<User?> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await (_googleSignIn.signIn());
    final GoogleSignInAuthentication googleAuth = await googleUser!.authentication;
    final AuthCredential credential = GoogleAuthProvider.credential(accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);
    await firebaseAuth.signInWithCredential(credential);
    return firebaseAuth.currentUser;
  }
  
  Future signOut() async {
    return await firebaseAuth.signOut();
  }

  Future<bool> isSignedIn() async {
    var currentUser = await firebaseAuth.currentUser;
    return currentUser != null;
  }

  Future<User?> getCurrentUser() async {
    return await firebaseAuth.currentUser;
  }

  Future<User?> getVerificationEmail() async {
    User user = await firebaseAuth.currentUser!;
    await user.reload();
    user = await firebaseAuth.currentUser!;
    return user;
  }
}