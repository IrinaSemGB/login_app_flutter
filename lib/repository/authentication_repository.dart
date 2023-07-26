import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:login_app_flutter/repository/exceptions/sign_up_with_email_and_password_failure.dart';
import 'package:login_app_flutter/screens/dashboard/dashboard_screen.dart';
import 'package:login_app_flutter/screens/welcome_screen.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    Future.delayed(Duration(seconds: 6));
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    user == null ? Get.offAll(() => WelcomeScreen()) : Get.offAll(() => DashboardScreen());
  }

  Future<void> createUserWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      firebaseUser.value != null ? Get.offAll(() => DashboardScreen()) : Get.offAll(() => WelcomeScreen());
    } on FirebaseAuthException catch (exception) {
      final ex = SignUpWithEmailAndPasswordFailure.code(exception.code);
      print('FIREBASE AUTH EXCEPTION - ${ex.message}');
      throw exception;
    } catch (_) {
      var error = SignUpWithEmailAndPasswordFailure();
      print('EXCEPTION - ${error.message}');
      throw error;
    }
  }

  Future<void> loginUserWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (exception) {
      print(exception.code);
    } catch (error) {
      print(error);
    }
  }

  Future<void> logout() async => await _auth.signOut();
}