import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    double displayHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Container decor"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // rasm uchun
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.red,
                image: const DecorationImage(
                  image: AssetImage('assets/images/man.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                decoration: BoxDecoration(
                  //color: Colors.yellow,
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(0.7),
                      Colors.black.withOpacity(0.6),
                      Colors.black.withOpacity(0.4),
                      Colors.black.withOpacity(0.1),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // button uchun
            Container(
              height: 35,
              // ekranni to'liq oladi
              //width: double.infinity,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                //border: Border.all(width: 2),
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: FlatButton(
                // height: 25,
                // minWidth: 150,
                // color: Colors.blue,
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.circular(20),
                // ),
                onPressed: () {
                  print(displayWidth);
                  print(displayHeight);
                },
                child: Text(
                  "button",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // GestureDetector
            GestureDetector(
              onTap: (){
                print('Gesture detector is working');
              },
              child: Text(
                'Did you forget your password?',
                style: TextStyle(
                    fontSize: 18,color: Colors.white
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
