import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:flag/flag.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Nimesh Acharya",
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("Curriculum Vitae"),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Card(
                  elevation: 8.0,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/My_Photo.jpeg"),
                          radius: 70.0,
                        ),
                        SizedBox(
                          height: 8.0,
                          width: double.infinity,
                        ),
                        Text(
                          "Nimesh Acharya",
                          style:
                              TextStyle(color: Colors.black87, fontSize: 15.0),
                        ),
                        SizedBox(
                          height: 1.0,
                          width: double.infinity,
                        ),
                        Text(
                          "Undergraduate Student at Jacobs University Bremen",
                          style: TextStyle(color: Colors.blueAccent),
                        ),
                        SizedBox(
                          height: 25.0,
                          width: double.infinity,
                        ),
                        Text(
                          "What I Think?",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent),
                        ),
                        Text(
                            "Life is difficult and its difficulty makes life beautiful! Learn to enjoy life, don't expect much enjoy every positive or negative aspect of it. Do whatever you are interested in and life is with you."),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text("Contact Me On!",
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                Card(
                  elevation: 8.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            color: Colors.purple,
                            onPressed: () {
                              // print("LinkedIn");
                              launch(
                                  "https://www.facebook.com/acharyafutures/");
                            },
                            icon: Icon(FontAwesomeIcons.facebook),
                          ),
                          IconButton(
                            color: Colors.blueGrey,
                            onPressed: () {
                              // print("LinkedIn");
                              launch(
                                  "https://www.linkedin.com/in/acharyafutures");
                            },
                            icon: Icon(FontAwesomeIcons.linkedinIn),
                          ),
                          IconButton(
                            color: Colors.blue,
                            onPressed: () {
                              // print("LinkedIn");
                              launch("https://www.twitter.com/acharyafutures/");
                            },
                            icon: Icon(FontAwesomeIcons.twitter),
                          ),
                          IconButton(
                            color: Colors.red,
                            onPressed: () {
                              launch(
                                  "https://www.instagram.com/acharyafutures/");
                            },
                            icon: Icon(FontAwesomeIcons.instagram),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage("assets/nep_flg.png"),
                            radius: 15.0,
                          ),
                          Text("  +977 9867268552"),
                          IconButton(
                            icon: Icon(FontAwesomeIcons.phone),
                            onPressed: () {
                              launch("tel://+9779867268552");
                            },
                          )
                        ],
                      ),
                      // SizedBox(
                      //   height: 0.0,
                      // ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage("assets/ger_flg.png"),
                            radius: 15.0,
                          ),
                          Text("  +49 15733733846"),
                          IconButton(
                            icon: Icon(FontAwesomeIcons.phone),
                            onPressed: () {
                              launch("tel://+4915733733846");
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      "Skills",
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Card(
                  elevation: 5.0,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage("assets/micro.png"),
                    ),
                    title: Text("Microsoft Office"),
                    subtitle: Text("Word, Excel, PowerPoint and OneNote"),
                  ),
                ),
                Card(
                  elevation: 5.0,
                  child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage("assets/adobe.png"),
                      ),
                      title: Text("Adobe"),
                      subtitle: Text("Photoshop, LightRoom and Illustrator")),
                ),
                Card(
                  elevation: 5.0,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/prg.jpg"),
                    ),
                    title: Text("Computer Languages"),
                    subtitle:
                        Text("HTML, CSS, QBASIC, C, C++, Flutter and Haskell"),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
