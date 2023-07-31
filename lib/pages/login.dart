import 'package:app_assessment/pages/register.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Color _buttonUserColor = const Color.fromRGBO(104, 116, 232, 1);
  Color _textUserColor = Colors.white;
  Color _buttonAdmColor = Colors.white;
  Color _textAdmColor = Colors.black;
  bool _select = true;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: 550,
            height: 630,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Entrar',
                  style: TextStyle(
                      fontSize: 45,
                      color: Colors.black,
                      fontFamily: 'inter',
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Deseja qual interface ?',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'inter',
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    _button('Usuário', _buttonUserColor, _textUserColor),
                    SizedBox(
                      width: 20,
                    ),
                    _button('Administrador', _buttonAdmColor, _textAdmColor)
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
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
                _textField('exemple@exemple.com', Icons.mail_outline),
                SizedBox(
                  height: 28,
                ),
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
                _textField('********', Icons.lock_outline, '1'),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
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
                      'Lembrar-me',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromRGBO(116, 121, 128, 1)),
                    ),
                    SizedBox(
                      width: 200,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ResgisterPage()));
                      },
                      child: Text(
                        'Esqueceu a senha?',
                        style: TextStyle(
                          color: Color.fromRGBO(104, 116, 232, 1),
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 550,
                  height: 68,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Entrar',
                      style: TextStyle(color: Colors.white, fontSize: 23),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(104, 116, 232, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _textField(String _label, IconData _icon, [String _suffix = '']) {
    return TextField(
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
          color: _suffix == ''
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
    );
  }

  void _selectButton() {
    setState(() {
      _buttonUserColor = _buttonUserColor == Colors.white
          ? const Color.fromRGBO(104, 116, 232, 1)
          : Colors.white;
      _textUserColor =
          _textUserColor == Colors.black ? Colors.white : Colors.black;
      _buttonAdmColor = _buttonAdmColor == Colors.white
          ? const Color.fromRGBO(104, 116, 232, 1)
          : Colors.white;
      _textAdmColor =
          _textAdmColor == Colors.black ? Colors.white : Colors.black;
      _select = _select == true ? false : true;
    });
  }

  Widget _button(String _text, Color _btnColor, Color _txtColor) {
    return SizedBox(
        height: 47,
        child: ElevatedButton(
          onPressed: () {
            _selectButton();
          },
          child: Text(
            _text,
            style:
                TextStyle(color: _txtColor, fontFamily: 'inter', fontSize: 22),
          ),
          style: ElevatedButton.styleFrom(
              backgroundColor: _btnColor,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              side: BorderSide(color: Color.fromRGBO(227, 227, 227, 1))),
        ));
  }
}
