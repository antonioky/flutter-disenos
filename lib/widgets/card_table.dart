import 'package:flutter/material.dart';



class CardTable extends StatelessWidget 
{

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            _SigleCard(color:Colors.blue,icon:Icons.border_all,text:'General'),
           _SigleCard(color:Colors.pinkAccent,icon:Icons.car_rental,text:'Transport'),
          ]
        ),
        TableRow(
          children: [
            _SigleCard(color:Colors.deepPurple,icon:Icons.movie,text:'Entertaiment'),
           _SigleCard(color:Colors.redAccent,icon:Icons.food_bank,text:'Grosery'),
          ]
        ),
        TableRow(
          children: [
            _SigleCard(color:Colors.green,icon:Icons.border_all,text:'General'),
           _SigleCard(color:Colors.pinkAccent,icon:Icons.car_rental,text:'Transport'),
          ]
        ),
        TableRow(
          children: [
            _SigleCard(color:Colors.deepPurple,icon:Icons.movie,text:'Entertaiment'),
           _SigleCard(color:Colors.yellowAccent,icon:Icons.food_bank,text:'Grosery'),
          ]
        )
      ],
    );
  }
}

class _SigleCard extends StatelessWidget {

  final IconData icon;
  final Color color;
  final String text;

  const _SigleCard({Key? key, 
   required this.icon,
   required this.color, 
   required this.text
   }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      height: 180,
      decoration: BoxDecoration(
        color: Color.fromRGBO(62, 66, 107, 0.7),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: this.color,
            child: Icon(this.icon),
            radius: 30,
          ),
          SizedBox(height: 10),
          Text(this.text,style:TextStyle(color: this.color,fontSize:18))
        ],
      ),
    );
  }
}