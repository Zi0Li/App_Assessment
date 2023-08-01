import 'package:app_assessment/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ResgisterPage extends StatefulWidget {
  const ResgisterPage({super.key});

  @override
  State<ResgisterPage> createState() => _ResgisterPageState();
}

class _ResgisterPageState extends State<ResgisterPage> {
  bool isChecked = false;
  String? _img;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _companyController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordConfirmController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              width: 1120,
              height: 800,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Criar Conta',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 45,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 132,
                        height: 132,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(104, 116, 232, 0.1),
                          borderRadius: BorderRadius.circular(100),
                          border: Border(
                            bottom: BorderSide(
                              width: 1,
                              color: Color.fromRGBO(104, 116, 232, 0.2),
                            ),
                            left: BorderSide(
                              width: 1,
                              color: Color.fromRGBO(104, 116, 232, 0.2),
                            ),
                            right: BorderSide(
                              width: 1,
                              color: Color.fromRGBO(104, 116, 232, 0.2),
                            ),
                            top: BorderSide(
                              width: 1,
                              color: Color.fromRGBO(104, 116, 232, 0.2),
                            ),
                          ),
                        ),
                        child: Center(
                          child: _img == null
                              ? Icon(
                                  Icons.image_search_outlined,
                                  size: 72,
                                  color: Color.fromRGBO(104, 116, 232, 1),
                                )
                              : Container(
                                  width: 132,
                                  height: 132,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: FileImage(File(_img!))),
                                  ),
                                ),
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            width: 225,
                            height: 45,
                            child: ElevatedButton(
                              onPressed: () {
                                ImagePicker()
                                    .pickImage(source: ImageSource.camera)
                                    .then((file) {
                                  if (file == null) {
                                    return;
                                  } else {
                                    setState(() {
                                      _img = file.path;
                                    });
                                  }
                                });
                              },
                              child: Text(
                                '+ Adicionar foto',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'inter',
                                    color: Colors.white),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromRGBO(104, 116, 232, 1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Adicione a logo da empresa',
                            style:
                                TextStyle(fontSize: 18, color: Colors.black87),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'E-mail',
                            style: TextStyle(
                                fontFamily: 'inter',
                                color: Colors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          _textField(
                            'exemple@exemple.com',
                            Icons.mail_outline,
                            _emailController,
                            type: TextInputType.emailAddress,
                          )
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Nome da empresa',
                            style: TextStyle(
                                fontFamily: 'inter',
                                color: Colors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          _textField(
                              'Exemple', Icons.apartment, _companyController),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Senha',
                            style: TextStyle(
                                fontFamily: 'inter',
                                color: Colors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          _textField('********', Icons.lock_outline,
                              _passwordController,
                              suffix: '1', obscureText: true),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Confirmar a senha',
                            style: TextStyle(
                                fontFamily: 'inter',
                                color: Colors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          _textField('********', Icons.lock_outline,
                              _passwordConfirmController,
                              suffix: '1', obscureText: true),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Checkbox(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        checkColor: Colors.white,
                        activeColor: Color.fromRGBO(104, 116, 232, 1),
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      Text(
                        'Eu aceito os termos de política e privacidade',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      SizedBox(
                        width: 429,
                      ),
                      Text(
                        'Já tem uma conta? ',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                        },
                        child: Text(
                          'Entrar',
                          style: TextStyle(
                            color: Color.fromRGBO(104, 116, 232, 1),
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: SizedBox(
                      width: 550,
                      height: 68,
                      child: ElevatedButton(
                        onPressed: () {
                          print('Email: ${_emailController.text}');
                          print('company: ${_companyController.text}');
                          print('password: ${_passwordController.text}');
                          print(
                              'passwordConfirm: ${_passwordConfirmController.text}');
                          print('IMG: $_img');
                        },
                        child: Text(
                          'Criar conta',
                          style: TextStyle(color: Colors.white, fontSize: 23),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(104, 116, 232, 1),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _textField(
      String _label, IconData _icon, TextEditingController _controller,
      {TextInputType? type, String suffix = '', bool obscureText = false}) {
    return SizedBox(
      width: 550,
      height: 68,
      child: TextField(
        keyboardType: type,
        obscureText: obscureText,
        controller: _controller,
        decoration: InputDecoration(
          hintText: _label,
          hintStyle: TextStyle(color: Color.fromRGBO(116, 121, 128, 1)),
          prefixIcon: Icon(
            _icon,
            color: Color.fromRGBO(102, 112, 133, 1),
            size: 25,
          ),
          suffixIcon: Icon(
            Icons.remove_red_eye_outlined,
            color: suffix == ''
                ? Colors.transparent
                : Color.fromRGBO(102, 112, 133, 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(227, 227, 227, 1)),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(227, 227, 227, 1)),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
