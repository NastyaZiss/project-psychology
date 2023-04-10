// import 'package:flutter/material.dart';

// void sendRegisterVerificationCode(String email) async{

//     VerifyCodeSettings settings = VerifyCodeSettings(VerifyCodeAction.registerLogin, sendInterval: 30);
//     EmailAuthProvider.requestVerifyCode(email, settings)
//         .then((result){
//       print("sendRegisterVerificationCode : " + result.validityPeriod);
//     });
//   }