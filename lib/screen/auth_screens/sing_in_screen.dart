import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../utils/text_style.dart';
import '../../widget/base_buttom.dart';
import '../../widget/text_input_regis.dart';

class SinginScreen extends StatefulWidget {
  SinginScreen({super.key});

  @override
  State<SinginScreen> createState() => _SinginScreenState();
}

class _SinginScreenState extends State<SinginScreen> {
  final _pasController = TextEditingController();
  final _phoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  void dispose() {
    _pasController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  final maskFormatter = MaskTextInputFormatter(
    mask: '+7 (###) ###-##-##',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: ConstrainedBox(
          constraints:
              BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
          child: Column(
            children: [
              SizedBox(
                height: 180,
              ),
              Text(
                'Вход',
                style: const TextStyle(
                    color: Colors.teal,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  key: _formKey,
                  child: Column(children: [
                    TextFormFieldSingInWidget(
                      Texthelper: 'Формат +7хххххxххxx',
                      textChild: 'Номер телефона',
                      TypeKeyboard: TextInputType.phone,
                      Controller: _phoneController,
                      vallid_fun: (val) =>
                          val.isEmpty ? 'Введите свой номер телефона' : null,
                      obscureText: false,
                      mask: maskFormatter,
                    ),
                    // TextFormFieldSingInWidget(
                    //   obscureText: false,
                    //   textChild: 'Email',
                    //   Controller: _emailController,
                    //   vallid_fun: null,
                    //   mask: MaskTextInputFormatter(),
                    // ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormFieldSingInWidget(
                      textChild: 'Пароль',
                      vallid_fun: (val) =>
                          val!.isEmpty ? 'Введите пароль' : null,
                      Controller: _pasController,
                      obscureText: true,
                      mask: MaskTextInputFormatter(),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Нет аккаунта? ',
                          style: TextStyleG.SimpleTextStyle,
                        ),
                        InkWell(
                          child: Text(
                            'Зарегестрироваться',
                            style: TextStyleG.TextButtomStyle,
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, '/singup');
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    OkButtom(
                        submiForm: () {
                          Navigator.pushNamed(context, '/home');
                        },
                        text: 'Готово'),

                    // OkButtom(
                    //   submiForm: () {
                    //     Navigator.pushNamed(context, '/home');
                    //   },
                    // ),
                  ]),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }

  // void _submiForm() {}

  // MaterialStateProperty<Color> getColor(Color color, Color colorPressed) {
  //   final getColor = (Set<MaterialState> states) {
  //     if (states.contains(MaterialState.pressed)) {
  //       return colorPressed;
  //     } else {
  //       return color;
  //     }
  //   };
  //   return MaterialStateProperty.resolveWith(getColor);
  // }
}

// class OkButtom extends StatelessWidget {
//   const OkButtom({super.key, required this.submiForm});
//   final Function submiForm;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 20, right: 20),
//       child: ElevatedButton(
//         onPressed: submiForm(),
//         style: ButtonStyle(
//           minimumSize: MaterialStateProperty.all(const Size(300, 60)),
//           // foregroundColor: getColor(Colors.red, Colors.pink),
//           // backgroundColor: Color
//           // getColor(Colors.teal, Color.fromARGB(255, 76, 175, 165)),
//         ),
//         child: Text(
//           "Готово",
//           style: TextStyleG.buttomTextStyle,
//           // selectionColor: Colors.black,
//         ),
//       ),
//     );
//   }

  // MaterialStateProperty<Color> getColor(Color color, Color colorPressed) {
  //   final getColor = (Set<MaterialState> states) {
  //     if (states.contains(MaterialState.pressed)) {
  //       return colorPressed;
  //     } else {
  //       return color;
  //     }
  //   };
  //   return MaterialStateProperty.resolveWith(getColor);
  // }

