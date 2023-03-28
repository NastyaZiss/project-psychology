import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  // final userInfo;
  final focusNode;
  final currentFocus;
  final nextFocus;
  final String textChild;
  final Texthelper;
  final Iconsuffix;
  final TypeKeyboard;
  final Controller;
  final String? initialvalue;
  // final MaskTextInputFormatter maskCustom;
  final Function()? onFieldSubmitted;
  // Function(String?) onSavedCustom;

  // final vallid_fun;

  void _fieldFocusChange(
      BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  TextFormFieldWidget({
    super.key,
    required this.textChild,
    this.Texthelper,
    this.Iconsuffix,
    this.TypeKeyboard,
    required this.Controller,
    // required this.vallid_fun,
    // required this.maskCustom,
    this.focusNode,
    this.currentFocus,
    this.nextFocus,
    this.onFieldSubmitted,
    this.initialvalue,
    // required this.userInfo,
    // this.onSavedCustom,
    // this.bOT,
  });

  @override
  Widget build(BuildContext context) {
    // User newUser = User(email: '', pas: '', name: '', pol: '', phone: '');

    return TextFormField(
      // onSaved: (value) {
      //   print('value${value}');
      //   onSavedCustom(value);
      // },
      controller: Controller,
      // initialValue: initialvalue,
      decoration: InputDecoration(
        labelText: textChild,
        filled: true,
        // fillColor: ColorG.buttonBackgroundColor,
        helperText: Texthelper,
        suffixIcon: IconButton(
          icon: Icon(
            Iconsuffix,
          ),
          onPressed: () {},
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
      ),
      focusNode: focusNode,
      autofocus: true,
      onFieldSubmitted: (_) {
        _fieldFocusChange(context, currentFocus, nextFocus);
      },
      keyboardType: TypeKeyboard,
      // validator: vallid_fun,
      // // inputFormatters: [maskCustom],
    );
  }
}

// initialvaluevoid(String? initialValue) {
//   if (initialValue!.isEmpty){
//     return initialValue;
//   }else{
//     return ' .';
//   }
// }
