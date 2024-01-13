import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _currentSliderValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         leading: Image.asset('images/icon.png'),
         title: Image.asset('images/point.png'),
         actions: [Image.asset('images/vector.png')],
       
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xff16C4EA), Color(0xff7DE8FF)],
                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(0.5, 0.0),
                  stops: [0.0, 2.0],
                  tileMode: TileMode.clamp),
            ),
          )),
      body: 
      Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xff16C4EA), Color(0xff7DE8FF)],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(0.5, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp),
        ),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
       mainAxisAlignment: MainAxisAlignment.center,
       crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Today', style: TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.w200),),
              const SizedBox(width: 50,),
              InkWell(
                
                child: Text('Tomorrow', style: TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.w200),)),
               const SizedBox(width: 120,),
              InkWell(
                onTap: () {
             
                },
                child: Text('Next week', style: TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.w200),)),
               const SizedBox(width: 20,),
               Center(
                 child: GestureDetector(
                  onTap: () {
                    
                  },
                   child: Container(child: Image.asset('images/icon2.png')
                                  ),
                 ),
               )
            ],
          ),
         Slider(
      activeColor: Colors.black,
      inactiveColor: Colors.grey[800],
      thumbColor: Colors.black,
      value: _currentSliderValue,
      min: 0,
      max: 100,
      
      
      onChanged: (double value) {
        setState(() {
          _currentSliderValue = value;
        });
      },
    )
        ],
      ), 
      ),
      
    );
  }
}
