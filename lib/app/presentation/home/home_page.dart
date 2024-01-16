import 'package:flutter/material.dart';
import 'package:weather_app/app/data/local_data/local_data_brain.dart';

enum UserChoice {
  selected,
  unselected,
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double SliderValue = 0;
  bool isClicked = false;
  showSearchCity(UserChoice userChoice) {
    if (userChoice == UserChoice.selected) {
      isClicked = true;
      const TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Enter a search term',
        ),
      );
    } else if (userChoice == UserChoice.unselected) {
      const Image(
        image: AssetImage('assets/images/w.png'),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Container(
          height: h,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xff9CECFE), Color(0xff9CECFE)],
                begin: FractionalOffset(0.0, 0.0),
                end: FractionalOffset(0.5, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    isClicked == true
                        ? TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Enter a search term',
                            ),
                          )
                        : InkWell(
                            onTap: () {
                              showSearchCity(UserChoice.selected);
                              isClicked = true;
                            },
                            child: const Image(
                              image: AssetImage('assets/images/w.png'),
                            ),
                          ),
                    SizedBox(
                      width: w * 0.8,
                    ),
                    const Image(image: AssetImage('assets/images/ww.png')),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: w * 0.05,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // SizedBox(
                        //   height: h * 0.01,
                        // ),
                        const Text(
                          'Bishkek,',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 40),
                        ),
                        const Text(
                          'Kyrgyzstan',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 39),
                        ),
                        const Text(
                          'Tue, Jun 30',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 16),
                        ),
                        SizedBox(
                          height: h * 0.3,
                          child: Row(
                            children: [
                              Container(
                                height: h * 9,
                                width: w * 0.5,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  image: const DecorationImage(
                                      image: AssetImage('assets/images/cl.png'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                  left: 20,
                                  top: 10,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          '19',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 110),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            bottom: 80,
                                          ),
                                          child: Text(
                                            '◦ᴄ',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300,
                                                fontSize: 25),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 30),
                                      child: Text(
                                        'Ryiny',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              height: 80,
                              width: w * 0.9,
                              decoration: BoxDecoration(
                                color: Colors.white
                                    .withOpacity(0.30000001192092896),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 4,
                                          top: 7,
                                        ),
                                        child: Container(
                                          height: 70,
                                          width: 50,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/q1.png'),
                                                fit: BoxFit.cover),
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        'RainFal',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 18),
                                      ),
                                      SizedBox(
                                        width: w * 0.5,
                                      ),
                                      const Text(
                                        '3cm',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 80,
                              width: w * 0.9,
                              decoration: BoxDecoration(
                                color: Colors.white
                                    .withOpacity(0.30000001192092896),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 4,
                                          top: 7,
                                        ),
                                        child: Container(
                                          height: 70,
                                          width: 50,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/q3.png'),
                                                fit: BoxFit.cover),
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        'RainFal',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 18),
                                      ),
                                      SizedBox(
                                        width: w * 0.5,
                                      ),
                                      const Text(
                                        '3cm',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 80,
                              width: w * 0.9,
                              decoration: BoxDecoration(
                                color: Colors.white
                                    .withOpacity(0.30000001192092896),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 4,
                                          top: 7,
                                        ),
                                        child: Container(
                                          height: 70,
                                          width: 50,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/q2.png'),
                                                fit: BoxFit.cover),
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        'RainFal',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 18),
                                      ),
                                      SizedBox(
                                        width: w * 0.5,
                                      ),
                                      const Text(
                                        '3cm',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const SizedBox(
                            width: 30,
                          ),
                          const Text(
                            'Today',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 20),
                          ),
                          const SizedBox(
                            width: 25,
                            height: 50,
                          ),
                          const Text(
                            'Tomorrow',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            width: w * 0.1,
                          ),
                          const Text(
                            'Next 7 Days',
                            style: TextStyle(fontSize: 20),
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          Container(
                            child: const Icon(Icons.chevron_right),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: w * 0.9,
                      child: Slider(
                        min: 0.0,
                        max: 100,
                        value: SliderValue,
                        inactiveColor: Colors.black,
                        activeColor: Colors.black,
                        onChanged: (value) {
                          setState(() {});

                          SliderValue = value;
                        },
                      ),
                    ),
                    SizedBox(
                      height: 104,
                      child: Expanded(
                        child: ListView.builder(
                          itemCount: time.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Row(
                              children: [
                                const SizedBox(
                                  width: 15,
                                ),
                                Container(
                                    width: 70,
                                    decoration: BoxDecoration(
                                      color: Colors.white
                                          .withOpacity(0.30000001192092896),
                                      borderRadius: BorderRadius.circular(50),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/icon${index + 1}.png'),
                                          fit: BoxFit.contain),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          time[index],
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w800,
                                              fontSize: 12),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          temperatura[index],
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w900,
                                              fontSize: 15),
                                        ),
                                      ],
                                    )),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
