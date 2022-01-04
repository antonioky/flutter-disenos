import 'package:flutter/material.dart';


class BasicDesignScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
          children: [
            Image(image: AssetImage('assets/spiderman.jpg')),
            Title(),
            ButtonSection(),
            Container(
              margin: EdgeInsets.symmetric(vertical:10,horizontal:20),
              child: Text('Spiderman No way Home la mejor pelicula del 2022 , un año de retraso para lan esperada tercera entrega del aracnido juntando a los spiderman de los universos cinematorgraficos como Tobey Maguire y Andrew Garfiel'))
          ],
          
        ),
      )
   );
  }
}


class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal:30,vertical: 20),
      child: Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Spiderman no WAy Home',style: TextStyle(fontWeight:FontWeight.bold),),
            Text('Solo en Cines Cinemark',style: TextStyle(color:Colors.black45),),
          ],
        ),
        Expanded(child: Container()),
        Icon(Icons.star,color:Colors.red),
        Text('41'),
      ],
          ),
    );
  }
}
class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical:30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomButtom(icon: Icons.call,text: 'CALL'),
          CustomButtom(icon: Icons.router,text: 'ROUTE'),
          CustomButtom(icon: Icons.share,text: 'SHARE')
        ],
      ),
    );
  }
}

class CustomButtom extends StatelessWidget {
  
  final IconData icon;
  final String text;
  
  const CustomButtom({
    Key? key, 
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(this.icon,color: Colors.blue,size: 30,),
        Divider(),
        Text(this.text,style:TextStyle(color:Colors.blue))
      ],
    );
  }
}
