import 'package:flutter/material.dart';


class ScrollScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        children:[
          Page1(),
          Page2()
        ]
      )
     );
  }
}

class Page1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack
    (
         children:[
           Background(),
           MainContent()

         ]
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(fontSize:60,fontWeight:FontWeight.bold,color:Colors.white);
        return SafeArea(
          bottom: false,
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 40),
              Text('11 °', style: textStyle),
              Text('Viernes',style: textStyle),
              Expanded(child: Container()),
              Icon(Icons.keyboard_arrow_down,size:100,color:Colors.white)
       

      ],
    ),
        );
  }
}

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     decoration: BoxDecoration(
     image:DecorationImage(
     
     image:AssetImage('assets/spiderman1.jpg'),
     fit: BoxFit.cover
         
          )
          ),
         
        );
  }
}

class Page2 extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Center(
        child: TextButton(
          onPressed: (){},
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: Text('Bienvenido',style:TextStyle(color: Colors.white,fontSize:30)),
          ),
          style: TextButton.styleFrom(
            backgroundColor: Colors.red,
            shape: StadiumBorder()
          ),
        ),
      )
      
    );
  }
}