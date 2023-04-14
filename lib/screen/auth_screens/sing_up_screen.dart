import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import 'package:skripts/screen/auth_screens/sing_in_screen.dart';
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
  final _passController = TextEditingController();
  final _phoneController = TextEditingController();

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
              SizedBox(
                height: 15,
              ),
              TextFormFieldSingInWidget(
                // currentFocus: _phonefocus,
                // nextFocus: _emailfocus,
                // focusNode: _phonefocus,
                Texthelper: 'Формат +7хххххxххxx',
                textChild: 'Номер телефона',
                TypeKeyboard: TextInputType.phone,
                Controller: _phoneController,
                vallid_fun: (val) =>
                    val.isEmpty ? 'Введите свой номер телефона' : null,
                obscureText: false,
                mask: maskFormatter,
              ),
              SizedBox(
                height: 20,
              ),
              OkButtom(submiForm: () {}, text: 'Отправить код на телефон'),
              SizedBox(
                height: 20,
              ),
              TextFormFieldSingInWidget(
                textChild: 'Код из СМС',
                TypeKeyboard: TextInputType.emailAddress,
                Controller: _emailController,
                obscureText: false,
                vallid_fun: (val) => val.isEmpty ? 'Введите свой  email' : null,
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
                submiForm: () {
                  _submiForm();
                  // Navigator.pushNamed(context, '/home');
                },
                text: 'Готово',
              ),
            ],
          ),
        ),
      ),
    );
  }

  MaterialStateProperty<Color> getColor(Color color, Color colorPressed) {
    final getColor = (Set<MaterialState> states) {
      if (states.contains(MaterialState.pressed)) {
        return colorPressed;
      } else {
        return color;
      }
    };
    return MaterialStateProperty.resolveWith(getColor);
  }

  void _submiForm() {
    if (_formKey.currentState!.validate()) {
      _showDialog(name: _nameController.text);
      print('имя: ${_nameController}');
      print('pass: ${_passController}');
      print('phone: ${_phoneController}');
      print('email: ${_emailController}');
      // Navigator.pushNamed(context, '/home');
    } else {
      _showMessage(message: 'Поля неправильно заполнены, поробуйте еще раз.');
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

  void _showMessage({String? message}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: Colors.red[300],
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
