import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({super.key});

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  String _text = 'Bom';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(104, 116, 232, 1),
                ),
              ),
              Text(
                'Network',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 70,
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 45,
          ),
          Text(
            'Como foi o atendimento para você?',
            style: TextStyle(
                color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: 605,
            height: 323,
            decoration: BoxDecoration(
              border: Border.all(
                  color: Color.fromRGBO(227, 227, 227, 1), width: 1.5),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 132,
                        height: 132,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(104, 116, 232, 0.1),
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                                width: 1,
                                color: Color.fromRGBO(227, 227, 227, 1))),
                        child: Center(
                          child: Icon(
                            Icons.person,
                            size: 92,
                            color: Color.fromRGBO(104, 116, 232, 1),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Nome',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Profição',
                            style: TextStyle(
                                color: Color.fromRGBO(160, 160, 160, 1),
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    itemCount: 5,
                    itemSize: 55,
                    itemPadding: EdgeInsets.symmetric(horizontal: 20),
                    itemBuilder: (context, index) {
                      switch (index) {
                        case 0:
                          return Icon(
                            Icons.star,
                            color: Colors.amber,
                          );
                        case 1:
                          return Icon(
                            Icons.star,
                            color: Colors.amber,
                          );
                        case 2:
                          return Icon(
                            Icons.star,
                            color: Colors.amber,
                          );
                        case 3:
                          return Icon(
                            Icons.star,
                            color: Colors.amber,
                          );
                        case 4:
                          return Icon(
                            Icons.star,
                            color: Colors.amber,
                          );
                        default:
                          return Container();
                      }
                    },
                    onRatingUpdate: (rating) {
                      setState(
                        () {
                          switch (rating) {
                            case 1:
                              _text = 'Ruim';
                              break;
                            case 2:
                              _text = 'Moderado';
                              break;
                            case 3:
                              _text = 'Bom';
                              break;
                            case 4:
                              _text = 'Muito bom';
                              break;
                            case 5:
                              _text = 'Exelente';
                              break;
                          }
                        },
                      );
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    _text,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Voltar',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  fixedSize: Size(250, 60),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                        width: 2, color: Color.fromRGBO(104, 116, 232, 1)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(
                width: 110,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Avaliar',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromRGBO(104, 116, 232, 1),
                  fixedSize: Size(250, 60),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                        width: 2, color: Color.fromRGBO(104, 116, 232, 1)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
