import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
//Esté es el esquema base para crear una estructura del proyecto. Después de podrá implementar cada parte del grafismo de la app.
//Todo lo que lleva => es incial
void main() => runApp(MyApp());// =>

class MyApp extends StatelessWidget{// =>
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Flutter Demo",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),
      home: HomePage(),
    );
  }

}// =>

class HomePage extends StatefulWidget{// =>
  @override
  _HomePageState createState() => _HomePageState();


}// =>
class _HomePageState extends State<HomePage>{// =>
  //Función de acción de los botones
  Widget _bottomAction(IconData icon){
    return InkWell(
      child: Padding(
       padding: const EdgeInsets.all(8.0),
       child: Icon(icon),
       ),
      onTap: () {},

    );
  }
  @override
  Widget build(BuildContext context) {// =>
    return Scaffold(
      //NavigaitorBar. Barra que saldrá al pie de la App. Es donde realmente vamos dandole forma a la APP
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[300],
        //Para darle una muesca en el navigationBar para que envuelva al botón flotante
        notchMargin: 8.0,
        shape: CircularNotchedRectangle(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _bottomAction(FontAwesomeIcons.clockRotateLeft),
          _bottomAction(FontAwesomeIcons.chartPie),
          SizedBox(width: 32),
          _bottomAction(FontAwesomeIcons.wallet),
          _bottomAction(Icons.settings),
        ],
      ),

    ),
    //Botón flotante
    floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.add),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100.0),
      ),
      backgroundColor: Colors.blueAccent,
      onPressed: (){


    },),
    //Aquí empezamos a diseñar el cuerpo de la aplicación. 
    //La aplicación llamará al body desde aquí. Más abajo se crea una función que festionará el cuerpo
    body: _body(),
    );// =>
    
  }

  // Función delcuerpo
  Widget _body() {
    return SafeArea(
      child: Column(
        children: <Widget>[
          _selector(),
          _expenses(),
          _graph(),
          _list(),
        ],
        ),
    );
  }

  Widget _selector()=> Container();
  Widget _expenses(){
    return Column(
      children: <Widget>[
        Text("\$2361.41", 
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16.0,
          color: Colors.blueGrey,
          ),),


        Text("Total expenses",
         style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16.0,
          color: Colors.blueGrey,
          ),),
      ]

    );
  }
  Widget _graph()=> Container();
  Widget _list()=> Container();


}
