import 'dart:ffi';

import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Todo App",
      home: Iskele(),
    );
  }
}

class Iskele extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.black87,
         title: new Center(child: new Text("Not Alma Uygulaması", textAlign: TextAlign.center,style: TextStyle(color: Color(0xFFFFA500)),)),
        
        
      ),
      
      body: AnaEkran(),
    );
  }
}

class AnaEkran extends StatefulWidget {
  const AnaEkran({ Key? key }) : super(key: key);

  @override
  _AnaEkranState createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  
  TextEditingController t1 =TextEditingController();
  List alisverisListesi = [] ;

  elemanEkle(){
    setState(() {
      alisverisListesi.add(t1.text);
      t1.clear();
    });
  }

    elemanCikar(){
    setState(() {
      alisverisListesi.remove(t1.text);
      t1.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container( 
      child: Column(
        children:<Widget> [
          Flexible(child: ListView.builder(itemCount: alisverisListesi.length,itemBuilder: (context,indeksNumarasi)=>ListTile(subtitle:Text("---------------",style: TextStyle(color: Colors.black),),title:Text(alisverisListesi[indeksNumarasi]))
          ),
          ),
          TextField(controller: t1,),
          RaisedButton(onPressed: elemanEkle,child: Text("Not Ekle"),),
          RaisedButton(onPressed: elemanCikar,child: Text("Sil"),),
        ],
      ),
    );
  }
}