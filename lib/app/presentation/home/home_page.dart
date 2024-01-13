import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
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

class _HomeState extends State<Home> {
  List<String> time = [
    'now',
    '13:00',
    '14:00',
    '15:00',
    '16:00',
    '17:00',
    '18:00',
    '19:00',
    '20:00',
    '21:00',
  ];
  List<String> temperatura = [
    "20°",
    '13°',
    '14°',
    '15°',
    '16°',
    '17°',
    '18°',
    '19°',
    '20°',
    '21°',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.9,
          ),
          Expanded(
            child: ListView.builder(
              physics: const AlwaysScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: time.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                          height: 130,
                          width: 65,
                          decoration: BoxDecoration(
                            color:
                                Colors.white.withOpacity(0.30000001192092896),
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/icon${index + 1}.png'),
                                fit: BoxFit.contain),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                time[index],
                                style: const TextStyle(
                                    fontWeight: FontWeight.w800, fontSize: 12),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                temperatura[index],
                                style: const TextStyle(
                                    fontWeight: FontWeight.w800, fontSize: 12),
                              ),
                            ],
                          )),
                    ),
                  ],
                );
              },
            ),
          ),
          const SizedBox(
            height: 5,
          ),
        ],

      ),
      
    );
  }
}
