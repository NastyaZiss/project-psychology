import 'package:agconnect_auth/agconnect_auth.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import 'package:skripts/screen/auth_screens/sing_in_screen.dart';
import 'package:skripts/services/auth/send_register_fun.dart';
import 'package:skripts/widget/base_buttom.dart';
import '../../utils/color.dart';
import '../../utils/text_style.dart';
import '../../widget/text_input.dart';
import '../../widget/text_input_regis.dart';

class SingUpScreen extends StatefulWidget {
  const SingUpScreen({super.key});

  @override
  State<SingUpScreen> createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen> {
  bool _hidePass = true;

  final _formKey = GlobalKey<FormState>();

  final maskFormatter = MaskTextInputFormatter(
    mask: '+7 (###) ###-##-##',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );

  List<String> _countries = ['Мужской', 'Женский', 'Нет'];

  final _namefocus = FocusNode();
  final _phonefocus = FocusNode();
  final _pasfocus = FocusNode();
  final _emailfocus = FocusNode();
  // late String _selectedCountry;

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _codController = TextEditingController();
  final _passController = TextEditingController();
  // final _phoneController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  // void _fieldFocusChange(
  //     BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
  //   currentFocus.unfocus();
  //   FocusScope.of(context).requestFocus(nextFocus);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Регистрация'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: ListView(
            padding: EdgeInsets.all(16.0),
            children: [
              TextFormFieldSingInWidget(
                textChild: ('Имя'),
                Controller: _nameController,
                // maskCustom: MaskTextInputFormatter(),
                vallid_fun: (dynamic value) {
                  final _nameExp = RegExp(r'^[А-Яа-я]+$');
                  if (value.isEmpty) {
                    return 'Введите имя';
                  } else if (!_nameExp.hasMatch(value)) {
                    return 'Это не Имя';
                  } else {
                    return null;
                  }
                },
                obscureText: false, mask: MaskTextInputFormatter(),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormFieldSingInWidget(
                obscureText: false,
                textChild: 'Email',
                Controller: _emailController,
                vallid_fun: (value) {
                  if (value.isEmpty) return 'Пожалуйста введите свой Email';
                },
                mask: MaskTextInputFormatter(),
              ),
              SizedBox(
                height: 20,
              ),
              OkButtom(
                submiForm: () {
                  String email = _emailController.text;

                  if (email == null || email.isEmpty) {
                    _showMessage(color: Colors.red, message: 'Пустой Email');
                  } else {
                    print(email);
                    _reqCode(email);
                  }
                },
                text: 'Отправить код на Email',
              ),
              // sendSigninVerificationCode(_emailController.toString());
              //  bool validation =  _submiForm();
              // if(validation)
              // print('email');
              // if (_emailController.text == 'x') {
              //   // _reqCode(_emailController.text);
              //   _submiForm();
              //   print('ji');
              // } else {
              //   _showMessage(color: Colors.red, message: 'Пустой Email');
              // }
              //   if (_formKey.currentState!.validate()) {
              //     _reqCode(_emailController.text);
              //   } else {
              //     _showMessage(
              //         message:
              //             'Поля неправильно заполнены, поробуйте еще раз.',
              //         color: Colors.red);
              //     return false;
              //   }
              // },
              // text: 'Отправить код на Email'),)
              SizedBox(
                height: 20,
              ),
              TextFormFieldSingInWidget(
                textChild: 'Код из письма',
                TypeKeyboard: TextInputType.emailAddress,
                Controller: _codController,
                obscureText: false,
                vallid_fun: (val) => val.isEmpty ? 'Введите код' : null,
                mask: MaskTextInputFormatter(),
              ),
              SizedBox(
                height: 20,
              ),
              PassWidgetField(
                passController: _passController,
              ),
              SizedBox(
                height: 30,
              ),
              OkButtom(
                submiForm: () async {
                  _submiForm();
                  _regW(_nameController.text, _emailController.text,
                      _passController.text, _codController.text);
                },
                text: 'Зарегестрироваться',
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Регистрация пользователя, предеча кода, пароля и почты
  Future<bool> _regW(
      String name, String email, String password, String code) async {
    EmailUser user = EmailUser(email, code, password: password);
    SignInResult resultregistrationEmail =
        await AGCAuth.instance.createEmailUser(user);
    if (resultregistrationEmail.user == null) {
      return false;
    }
    return true;
  }

  /// запрос кода подтвржения на почту
  ///
  Future<bool> _reqCode(String email) async {
    _showMessage(message: 'Проверьте почту', color: Colors.green);

    print('email SEND');
    VerifyCodeSettings settings =
        VerifyCodeSettings(VerifyCodeAction.registerLogin, sendInterval: 5);
    try {
      VerifyCodeResult? resultVerifyCode =
          await EmailAuthProvider.requestVerifyCode(email, settings);
      return resultVerifyCode != null;
    } catch (error) {
      _showMessage(message: 'ERROR', color: Colors.red);
      print('ERRoR');
      // _showDialog(name: 'ljg');
      return false;
    }
  }

  bool _submiForm() {
    print('sdg');
    //TODO: проверить правильно ли у пользователя заполнен пароль (не меньше 8 символов и двух типов, правило в Huawei) и почта (присутствие знака @)
    // String password = '';
    // String login = '';
    // var regExp_Email = RegExp(
    //         r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
    //     .hasMatch(login);
    // var regExp_Password =
    //     RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
    //         .hasMatch(password);
    // if (_emailController.text.length && _passController.text.length && password.length > 8) {
    // } else {
    //   return false;
    // }
    if (_formKey.currentState!.validate()) {
      // _showDialog(name: _nameController.text);
      print('имя: ${_nameController}');
      print('pass: ${_passController}');
      print('phone: ${_codController}');
      print('email: ${_emailController}');
      // Navigator.pushNamed(context, '/home');
      print('js');
      return true;
    } else {
      _showMessage(
          message: 'Поля неправильно заполнены, поробуйте еще раз.',
          color: Colors.red);
      return false;
    }
  }

  void _showDialog({required String name}) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              'Регистрация прошла успешно!',
              style:
                  TextStyle(color: Colors.green, fontWeight: FontWeight.w700),
            ),
            content:
                Text('${name}, теперь вы можете войти в свой новый аккаунт .'),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/singin');
                  },
                  child: Text('Войти')),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Назад')),
            ],
          );
        });
  }

  void _showMessage({String? message, required MaterialColor color}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: color,
        duration: Duration(seconds: 3),
        content: Text(
          message!,
          style: const TextStyle(color: Colors.black, fontSize: 18),
        )));
  }
}

class PassWidgetField extends StatefulWidget {
  const PassWidgetField({super.key, this.passController});
  final passController;

  @override
  State<PassWidgetField> createState() => _PassWidgetFieldState();
}

class _PassWidgetFieldState extends State<PassWidgetField> {
  bool hidePass = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (val) => val!.isEmpty ? 'Введите пароль' : null,
      controller: widget.passController,
      obscureText: hidePass,
      decoration: InputDecoration(
        labelText: 'Пароль',
        filled: true,
        fillColor: Color.fromARGB(255, 248, 233, 255),
        helperText: 'Не менее 8 символов',
        suffixIcon: IconButton(
          icon: Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(
              hidePass ? Icons.visibility_off : Icons.visibility,
            ),
          ),
          onPressed: () {
            setState(() {
              hidePass = !hidePass;
            });
          },
        ),
        helperStyle: TextStyle(color: Colors.teal[200]),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide:
              BorderSide(color: Color.fromARGB(255, 168, 190, 197), width: 2.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            color: Colors.white,
            width: 1.0,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            color: Colors.white,
            width: 1.0,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            color: Colors.white,
            width: 1.0,
          ),
        ),
      ),
    );
  }
}

// TextFormFieldSingInWidget(
//   // currentFocus: _phonefocus,
//   // nextFocus: _emailfocus,
//   // focusNode: _phonefocus,
//   Texthelper: 'Формат +7хххххxххxx',
//   textChild: 'Номер телефона',
//   TypeKeyboard: TextInputType.phone,
//   Controller: _phoneController,
//   vallid_fun: (val) =>
//       val.isEmpty ? 'Введите свой номер телефона' : null,
//   obscureText: false,
//   mask: maskFormatter,
// ),
