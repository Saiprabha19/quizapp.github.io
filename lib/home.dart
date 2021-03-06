import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quiz/quizpage.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List<String> images = [
    "images/py.png",
    "images/java.png",
    "images/js.png",
    "images/cpp.png",
    "images/linux.png",
  ];
  Widget customcard(String langname, String image) {
    return Padding(
      padding: EdgeInsets.all(
        20.0,
      ),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => getjson(),
          ));
        },
        child: Material(
          color: Colors.indigoAccent,
          elevation: 10.0,
          borderRadius: BorderRadius.circular(20.0),
          child: Container(
              child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(100.0),
                  child: Container(
                    height: 200.0,
                    width: 200.0,
                    child: ClipOval(
                      child: Image(
                        fit: BoxFit.contain,
                        image: AssetImage(
                          image,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Text(
                  langname,
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.white,
                    fontFamily: "Quando",
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "hjoihsiandjh this is some random description",
                  style: TextStyle(
                      fontSize: 16.0, color: Colors.white, fontFamily: "Alike"),
                  maxLines: 5,
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz", style: TextStyle(fontFamily: "Quando")),
      ),
      body: ListView(
        children: <Widget>[
          customcard("Python", images[0]),
          customcard("Java", images[1]),
          customcard("javascript", images[2]),
          customcard("C++", images[3]),
          customcard("Linux", images[4]),
        ],
      ),
    );
  }
}
