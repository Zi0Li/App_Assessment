import 'dart:io';

import 'package:flutter/material.dart';

class SelectCompany extends StatefulWidget {
  const SelectCompany({super.key});

  @override
  State<SelectCompany> createState() => _SelectCompanyState();
}

class _SelectCompanyState extends State<SelectCompany> {
  String? _img;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Selecione sua empresa',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 44,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: 560,
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    runSpacing: 10,
                    spacing: 10,
                    children: [_cardCompany(),_cardCompany(),_cardCompany(),],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 130,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Cancelar',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'inter',
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                  width: 2,
                                  color: Color.fromRGBO(104, 116, 232, 0.2))),
                        ),
                      ),
                    ),SizedBox(width: 20,),
                    SizedBox(
                      width: 130,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Escolher',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'inter',
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(104, 116, 232, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _cardCompany() {
    return GestureDetector(
      child: SizedBox(
        width: 275,
        height: 130,
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Row(children: [
              Container(
                width: 94,
                height: 94,
                child: Center(
                  child: _img == null
                      ? Icon(
                          Icons.home_work_outlined,
                          size: 60,
                          color: Colors.black,
                        )
                      : Container(
                          width: 94,
                          height: 94,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: FileImage(File(_img!))),
                          ),
                        ),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  border: Border(
                    bottom: BorderSide(
                      width: 2,
                      color: Color.fromRGBO(104, 116, 232, 0.2),
                    ),
                    left: BorderSide(
                      width: 2,
                      color: Color.fromRGBO(104, 116, 232, 0.2),
                    ),
                    right: BorderSide(
                      width: 2,
                      color: Color.fromRGBO(104, 116, 232, 0.2),
                    ),
                    top: BorderSide(
                      width: 2,
                      color: Color.fromRGBO(104, 116, 232, 0.2),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Testeeeee',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 26),
              )
            ]),
          ),
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide(
                  width: 2, color: Color.fromRGBO(104, 116, 232, 0.2))),
        ),
      ),
      onTap: () {
        print('Clicou');
      },
    );
  }
}
