import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

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
