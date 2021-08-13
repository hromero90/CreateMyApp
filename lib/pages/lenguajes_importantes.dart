import 'package:flutter/material.dart';

class lenguajes_importantes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewPage(),
    );
  }
}

class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  // Title List Here
  var titleList = [
    "Appsgeyser",
    "AppInventor",
    "Andromo",
    "Mobincube",
    "Thunkable",
    "Flutter",
    "Kotlin"
  ];

  // Description List Here
  var descList = [
    "Es un creador de aplicaciones que destaca por tener muchas funcionalidades, puedes desarrollar apps para android rapidamente.\n \nhttps://appsgeyser.com/",
    "Es un entorno de desarrollo de software creado por Google Labs para la elaboración de aplicaciones destinadas al sistema operativo Android\n \nhttps://appinventor.mit.edu/",
    "Permite crear y desarrollar apps para tus proyectos. No tienes que tener grandes conocimientos de programación para crear apps ya que es una plataforma intuitiva.\n \nhttps://www.andromo.com/",
    "Este sitio te permite crear una app tanto para Android como iOS de forma rápida y totalmente funcional. También dispone de una función para la monetización de la misma.\n \nhttps://mobincube.com/es/",
    "Esta página web enfocada en crear app gratis es una de las mejores de la lista. En cuanto al diseño, si desarrollas tu app con Thunkable, quedarán con un aspecto intuitivo y sumamente audaz.\n \nhttps://thunkable.com/",
    "Flutter es un SDK de código fuente abierto de desarrollo de aplicaciones móviles creado por Google. Se usa para desarrollar interfaces de usuario para aplicaciones en Android y iOS.\n \nhttps://flutter.dev/",
    "Kotlin es un lenguaje de programación de tipado estático que corre sobre la máquina virtual de Java y que también puede ser compilado a código fuente de JavaScript.\n \nhttps://kotlinlang.org/"
  ];

  // Image Name List Here
  var imgList = [
    "assets/images/appsgeyser_logo.png",
    "assets/images/App_inventor_II.png",
    "assets/images/andromo.png",
    "assets/images/mobincube.png",
    "assets/images/thunkable.png",
    "assets/images/flutter.png",
    "assets/images/kotlin.png"
  ];

  @override
  Widget build(BuildContext context) {
    // MediaQuery to get Device Width
    double width = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
      backgroundColor: Color(0xFF212239),
      appBar: AppBar(
        // App Bar
        title: Text(
          "Herramientas para el desarrollo de una App",
          style: TextStyle(color: Colors.grey, fontSize: 15),
        ),
        elevation: 0,
        backgroundColor: Color(0xFF212239),
      ),
      // Main List View With Builder
      body: ListView.builder(
        itemCount: imgList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // This Will Call When User Click On ListView Item
              showDialogFunc(
                  context, imgList[index], titleList[index], descList[index]);
            },
            // Card Which Holds Layout Of ListView Item
            child: Card(
              color: Colors.blueGrey[900],
              child: Row(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    child: Image.asset(imgList[index]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          titleList[index],
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: width,
                          child: Text(
                            descList[index],
                            maxLines: 3,
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

// This is a block of Model Dialog
showDialogFunc(context, img, title, desc) {
  return showDialog(
    context: context,
    builder: (context) {
      return Center(
        child: Material(
          type: MaterialType.transparency,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blueGrey[900],
            ),
            padding: EdgeInsets.all(15),
            height: 490,
            width: MediaQuery.of(context).size.width * 0.7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    img,
                    width: 200,
                    height: 200,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  // width: 200,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      desc,
                      maxLines: 9,
                      style: TextStyle(fontSize: 15, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
