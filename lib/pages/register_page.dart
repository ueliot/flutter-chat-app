import 'package:chat_app/widgets/btn_azul.dart';
import 'package:chat_app/widgets/custom_input.dart';
import 'package:chat_app/widgets/custom_labels.dart';
import 'package:chat_app/widgets/custom_logo.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF2F2F2),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Logo(titulo: 'Register',),
                  _Form(),
                  Labels(
                    ruta: 'login',
                    texto1: 'ya estas registrado?',
                    texto2: 'ir al inicio..',
                  ),
                  Text('Terminos y condiciones de uso',
                      style: TextStyle(fontWeight: FontWeight.w200)),
                ],
              ),
            ),
          ),
        ));
  }
}

class _Form extends StatefulWidget {
  @override
  __FormState createState() => __FormState();
}

class __FormState extends State<_Form> {
  final nameCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 40),
        padding: EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          children: <Widget>[
            CustomInput(
              icon: Icons.supervised_user_circle_outlined,
              placeholder: 'name',
              keyboardType: TextInputType.text,
              textController: nameCtrl,
            ),
            CustomInput(
              icon: Icons.email_outlined,
              placeholder: 'email',
              keyboardType: TextInputType.emailAddress,
              textController: emailCtrl,
            ),
            CustomInput(
                icon: Icons.lock_outlined,
                placeholder: 'password',
                //keyboardType: TextInputType.,
                textController: passCtrl,
                isPassword: true),
            BtnAzul(
              text: "Ingrese",
              onPressed: () {
                print(nameCtrl.text);
                print(emailCtrl.text);
                print(passCtrl.text);
              },
            ),
          ],
        ));
  }
}
