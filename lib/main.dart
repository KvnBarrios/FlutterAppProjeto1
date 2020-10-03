import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(TelaTabBar());
}

class TelaTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.deepPurple,
    ));
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.deepPurple
      ),
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            bottom: TabBar(
              indicatorColor: Colors.pink,
              tabs: [
                Tab(icon: Icon(Icons.person)),
                Tab(icon: Icon(Icons.people)),
                Tab(icon: Icon(Icons.filter_frames)),
              ],
            ),
            title: Text('Projeto 1'),
          ),
          body: TabBarView(
            children: [
              ListView(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 5),),
                  Center(child: Text("Kevin Barrios - 219643",style:TextStyle(fontWeight: FontWeight.w300,fontSize: 30))),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(300.0),
                    child: Image.network('https://scontent-gru2-1.xx.fbcdn.net/v/t1.0-9/76612211_10218187112740974_6298497281054212096_n.jpg?_nc_cat=111&_nc_sid=09cbfe&_nc_ohc=b_kupRmnd4QAX9wPCbE&_nc_ht=scontent-gru2-1.xx&oh=1a51c715ebc593ed51ebd39690ceef51&oe=5F9F2AE7',
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.map),
                    title: Text('Socorro - SP'),
                  ),
                  ListTile(
                    leading: Icon(Icons.book),
                    title: Text('Sistemas de informação - 7º Semestre'),
                  ),
                  ListTile(
                    leading: Icon(Icons.work),
                    title: Text('BTG Pactual'),
                  ),
                  ListTile(
                    leading: Icon(Icons.computer),
                    title: Text('Python - UiPath - .Net - SSIS'),
                  ),
                  ListTile(
                    leading: Icon(Icons.directions_run),
                    title: Text('Futebol'),
                  ),
                  ListTile(
                    leading: Icon(Icons.music_note),
                    title: Text('Todo tipo de música'),
                  ),
                ],
              ),
              ListView(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 5),),
                  Center(child: Text("Miguel Amaral - 222518",style:TextStyle(fontWeight: FontWeight.w300,fontSize: 30))),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(300.0),
                    child: Image.network('https://cdn.discordapp.com/attachments/761962454426189886/761963807605522442/47574731_380095425892120_3839568945782718464_n.jpg'
                      ,
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.map),
                    title: Text('São Paulo - SP'),
                  ),
                  ListTile(
                    leading: Icon(Icons.book),
                    title: Text('Sistemas de informação - 7º Semestre'),
                  ),
                  ListTile(
                    leading: Icon(Icons.work),
                    title: Text('Itaú'),
                  ),
                  ListTile(
                    leading: Icon(Icons.computer),
                    title: Text('Python - JavaScript - C'),
                  ),
                  ListTile(
                    leading: Icon(Icons.language),
                    title: Text('Mandarim - Inglês'),
                  ),
                  ListTile(
                    leading: Icon(Icons.music_note),
                    title: Text('Todo tipo de música'),
                  ),
                ],
              ),
              ListView(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 5),),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Center(child: Text("Sistema de monitoramento para empresa - COVID 2019",style:TextStyle(fontWeight: FontWeight.w300,fontSize: 30))),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(150.0),
                    child: Image.network('https://upload.wikimedia.org/wikipedia/commons/8/82/SARS-CoV-2_without_background.png',width: 150,height: 100
                      ,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Center(child: Text("Dado ao contexto atual da pandemia de corona virus, pensamos em fazer um aplicativo que a empresa disponibilizaria para seus "
                        "colaboradores, os mesmos fariam um auto-diagnostico rápido no aplicativo, e essas informaçõse irão para um banco de dados, e serão consumidas posteriormente por uma tela, para que o gestor da empresa saiba a atual situação dos seus funcionarios",
                      style:TextStyle(fontWeight: FontWeight.w300,fontSize: 20),
                      textAlign: TextAlign.justify,)),
                  ),
                  ListTile(
                    leading: Icon(Icons.dns),
                    title: Text('MongoDB'),
                  ),
                  ListTile(
                    leading: Icon(Icons.lock_outline),
                    title: Text('As informações serão armazenadas no banco de dados'),
                  ),
                  ListTile(
                    leading: Icon(Icons.computer),
                    title: Text('Tela para o gestor em Flask (Python)'),
                  ),
                  ListTile(
                    leading: Icon(Icons.lock),
                    title: Text('Login com CPF'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
