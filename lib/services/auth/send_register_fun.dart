import 'package:agconnect_auth/agconnect_auth.dart';
import 'package:flutter/material.dart';

// HuaweiAuthCredential auths = HuaweiAuthCredential(token, autoCreateUser, provider)
// HuaweiAuthProvider p = HuaweiAuthProvider();
void sendRegisterVerificationCode(String email) async {
  VerifyCodeSettings settings =
      VerifyCodeSettings(VerifyCodeAction.registerLogin, sendInterval: 30);
  EmailAuthProvider.requestVerifyCode(email, settings).then((result) {
    print("sendRegisterVerCedo: " + result.toString());
  });
}

void registerWithEmail(String email, String verifyCode, String password,
    BuildContext context) async {
  EmailUser user = EmailUser(email, verifyCode, password: password);
  AGCAuth.instance.createEmailUser(user).then((signInResult) {
    print("registerWithEmail : " +
        signInResult.toString()); // signInResult.user.email
  });
}

void sendSigninVerificationCode(String email) async {
  VerifyCodeSettings settings =
      VerifyCodeSettings(VerifyCodeAction.registerLogin, sendInterval: 30);
  EmailAuthProvider.requestVerifyCode(email, settings).then((result) {
    print("sendSigninVerificationCode : " + result.toString());
  });
}

void loginWithEmail(String email, String verifyCode, String password) async {
  AGCAuthCredential credential = EmailAuthProvider.credentialWithVerifyCode(
      email, verifyCode,
      password: password);
  AGCAuth.instance.signIn(credential).then((signInResult) {
    AGCUser? user = signInResult.user;
    String? userD = user!.displayName.toString();
    print("loginWithEmail : $userD");
  }).catchError((error) {
    print("Login Error " + error.toString());
  });
}

void sendResetPasswordVerificationCode(String email) async {
  VerifyCodeSettings settings =
      VerifyCodeSettings(VerifyCodeAction.resetPassword, sendInterval: 30);
  EmailAuthProvider.requestVerifyCode(email, settings).then((result) {
    print(result?.validityPeriod);
  });
}

void resetPassword(String email, String newPassword, String verifyCode) async {
  AGCAuth.instance
      .resetPasswordWithEmail(email, newPassword, verifyCode)
      .then((value) {
    print("Password Reseted");
  }).catchError((error) {
    print("Password Reset Error " + error);
  });
}

void signOut() async {
  AGCAuth.instance.signOut().then((value) {
    print("SignInSuccess");
  }).catchError((error) => print("SignOut Error : " + error));
}

void getCurrentUser() async {
    AGCAuth.instance.currentUser.then((value) {
      print('current user = ${value?.uid} , ${value?.email} , ${value?.displayName} , ${value?.phone} , ${value?.photoUrl} ');
    });
  }