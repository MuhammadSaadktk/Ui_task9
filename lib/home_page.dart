import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        title: Text(
          'ListView Kullanimi',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: 30,
        itemBuilder: (context, index) {
          final number = index + 80;
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: (number % 2 == 0)
                          ? Colors.lightBlue[100]
                          : Colors.lightGreen[300],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                              backgroundColor: Colors.blue,
                              radius: 25,
                              // child: Text('80'),
                              child: Text(
                                "$number",
                                style: TextStyle(color: Colors.white),
                              )),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Text('Ogrenic Adi 80'),
                              // Text('Organic Soyad 80')
                              Text(
                                'Ogreni Adi $number',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Organic Soyad $number",
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black54),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    indent: 30,
                    endIndent: 30,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
