import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

import 'lista_page.dart';

class HomePage extends StatefulWidget{
  
  HomePage({Key key}) : super(key: key);
  
  @override
  HomePageState createState() => HomePageState();
  
  }
  
  class HomePageState extends State<HomePage> { 
     int selectedIndex = 0;
 
   final widgetOptions = [
   new ListPage(),
   Text('Adicionar bebida'),
   Text('Favoritos')
  ];
  
   @override
  Widget build(BuildContext context) {
    //cabeçalho da aplicação
    
   
    
    
    return Scaffold(
      appBar: AppBar (
        title: Text('App bebida'),
        ),

        //corpo da pagina home_page
        body: Center(
          child: widgetOptions.elementAt(selectedIndex)),
        
        // opção do menu de navegação
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon (Icons.local_drink), title: Text('Lista')),
          BottomNavigationBarItem(icon: Icon (Icons.add_a_photo), title: Text('Adicionar Bebida')),
          BottomNavigationBarItem(icon: Icon (Icons.favorite), title: Text('Bebida')),
 


        ],
        //indicar opção corrente para a navegação 
        currentIndex: selectedIndex,
        fixedColor: Colors.blueAccent,
        onTap: cliquei,
        ),
        
        );

  }

  void cliquei(int index){
    setState(() {
      selectedIndex = index;
      
    });
  }

    


}