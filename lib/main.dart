import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var girilenDegerController = TextEditingController();
  var sonuc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hesap Makinesi"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(height: 100,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    controller: girilenDegerController ,

                  ),
                ),
              ),
          Container(child: Text("Sonuç: $sonuc"),),
          Container(
            height: 110,
            child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:3,
                    childAspectRatio: 1.5/ 1),

                children:[
                  GestureDetector(
                    onTap: (){
                      setState((){
                        girilenDegerController.text = "";

                      });

                    },
                    child: Card(color: Colors.redAccent,
                      child: Center(child: Text("C")),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState((){
                        girilenDegerController.text+='+';
                      });

                    },
                    child: Card(color: Colors.green,
                      child: Center(child: const Text("+")),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState((){
                        sonuc= int.parse(girilenDegerController.text.split("+")[0]) + int.parse(girilenDegerController.text.split("+")[1]);

                        print(sonuc);


                      });

                    },
                    child: Card(color: Colors.orange,
                      child: Center(child: const Text("=")),
                    ),
                  ),

                ]
            ),
          ),
              Container(
                height: 330,
                child: GridView(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount:3,
                        childAspectRatio: 1.2/ 1),

                      children:[
                        GestureDetector(
                        onTap: (){
                          setState((){
                          girilenDegerController.text += "1";

                          });

                        },
                        child: Card(color: Colors.blueAccent,
                          child: Center(child: Text("1")),
                        ),
                      ),
                        GestureDetector(
                          onTap: (){
                            setState((){
                              girilenDegerController.text += "2";

                            });

                          },
                          child: Card(color: Colors.blueAccent,
                            child: Center(child: const Text("2")),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState((){
                              girilenDegerController.text += "3";

                            });

                          },
                          child: Card(color: Colors.blueAccent,
                            child: Center(child: const Text("3")),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState((){
                              girilenDegerController.text += "4";

                            });

                          },
                          child: Card(color: Colors.blueAccent,
                            child: Center(child: const Text("4")),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState((){
                              girilenDegerController.text += "5";

                            });

                          },
                          child: Card(color: Colors.blueAccent,
                            child: Center(child: const Text("5")),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState((){
                              girilenDegerController.text += "6";

                            });

                          },
                          child: Card(color: Colors.blueAccent,
                            child: Center(child: const Text("6")),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState((){
                              girilenDegerController.text += "7";

                            });

                          },
                          child: Card(color: Colors.blueAccent,
                            child: Center(child: const Text("7")),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState((){
                              girilenDegerController.text += "8";

                            });

                          },
                          child: Card(color: Colors.blueAccent,
                            child: Center(child: const Text("8")),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState((){
                              girilenDegerController.text += "9";

                            });

                          },
                          child: Card(color: Colors.blueAccent,
                            child: Center(child: const Text("9")),
                          ),
                        ),

                          ]
                ),
              ),
            ],
          ),
        ),
      ),
        );
  }
}
