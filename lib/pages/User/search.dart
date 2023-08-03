import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
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
                      color: Colors.amber,
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
                height: 60,
              ),
              Text(
                'Qual colaborador te atendeu?',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 34,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              _textField(_searchController),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 1100,
                  child: Wrap(
                children: [
                  _card(),
                  _card(),
                  _card(),
                  _card(),
                  _card(),
                  _card(),
                  _card(),
                  _card(),
                  _card(),
                  _card(),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }

  Widget _textField(TextEditingController controller) {
    return SizedBox(
      width: 550,
      height: 68,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: 'Pesquisar',
          hintStyle:
              TextStyle(color: Color.fromRGBO(116, 121, 128, 1), fontSize: 18),
          prefixIcon: Icon(
            Icons.search,
            color: Color.fromRGBO(104, 116, 232, 1),
            size: 25,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(width: 2, color: Color.fromRGBO(104, 116, 232, 1)),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(width: 2, color: Color.fromRGBO(104, 116, 232, 1)),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
      ),
    );
  }

  Widget _card() {
    return GestureDetector(
      child: SizedBox(
        width: 340,
        height: 130,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(width: 2),
          ),
          child: Row(
            children: [
              Container(
                width: 94,
                height: 94,
                child: Center(
                    child: Icon(
                  Icons.person,
                  size: 85,
                )),
                decoration: BoxDecoration(shape: BoxShape.circle),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Nome do colab',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Cargo',
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
