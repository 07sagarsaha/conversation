import 'package:conversation/auth/loginScreen.dart';
import 'package:conversation/auth/signin.dart';
import 'package:conversation/exeptions/signup_email_password_falior.dart';
import 'package:conversation/screens/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthReprosotry extends GetxController {
  static AuthReprosotry get instance => Get.find();

  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInisialscrren);
  }

  _setInisialscrren(User? user) {
    user == null ? Get.offAll(() => const Login()) : Get.offAll(const Home());
  }

  Future<void> createUserwithemailandpassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      firebaseUser.value != null
          ? Get.offAll(() => const Home())
          : Get.to(() => const Signinpage());
    } on FirebaseAuthException catch (e) {
      final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
      throw ex;
    } catch (_) {
      const ex = SignUpWithEmailAndPasswordFailure();
      throw ex;
    }
  }

  Future<void> loginUserwithemailandpassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (_) {}
  }

  Future<void> signout() => _auth.signOut();
}
