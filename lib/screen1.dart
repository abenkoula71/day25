import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List user = [
    {
      'name': 'abenkoula71',
      'message': 'hello word i\'m abenkoula71 ',
      'date': '27 april',
      'image': 'https://avatars.githubusercontent.com/u/91261923?v=4'
    },
    {
      'name': 'Hmida71',
      'message': 'hello word i\'m Hmida71 ',
      'date': '17 april',
      'image': 'https://avatars.githubusercontent.com/u/69757558?v=4'
    },
    {
      'name': 'khalil',
      'message': 'hello word i\'m khalil ',
      'date': '7 april',
      'image': 'https://avatars.githubusercontent.com/u/64180671?s=100&v=4'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50, left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'MATCHES',
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ...List.generate(
                            4,
                            (index) => Row(
                                  children: [
                                    ...List.generate(
                                        user.length,
                                        (index) => Container(
                                              margin:
                                                  EdgeInsets.only(right: 15),
                                              height: 90,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    height: 50,
                                                    width: 50,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40),
                                                        color: Colors.red,
                                                        image: DecorationImage(
                                                            image: NetworkImage(
                                                                '${user[index]['image']}'))),
                                                  ),
                                                  Text(
                                                    '${user[index]['name']}',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  Text(
                                                    '21',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ))
                                  ],
                                ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(right: 15, bottom: 15),
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(162, 218, 218, 218),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Serach',
                          style: TextStyle(color: Colors.black54),
                        ),
                        Icon(Icons.search, color: Colors.black54)
                      ],
                    ),
                  ),
                  Text(
                    'CHAT',
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ...List.generate(
                      5,
                      (index) => Column(
                            children: [
                              ...List.generate(
                                  user.length,
                                  (index) => Container(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 10),
                                        margin: EdgeInsets.only(right: 15),
                                        decoration: BoxDecoration(
                                            border: Border(
                                                top: BorderSide(
                                                    color: Color.fromARGB(
                                                        60, 158, 158, 158),
                                                    width: 1))),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  height: 45,
                                                  width: 45,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              40),
                                                      color: Colors.red,
                                                      image: DecorationImage(
                                                          image: NetworkImage(
                                                              '${user[index]['image']}'))),
                                                ),
                                                SizedBox(
                                                  width: 15,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      user[index]['name'],
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                    Text(
                                                      user[index]['message'],
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color:
                                                              Colors.black54),
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                            Text(
                                              user[index]['date'],
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black54),
                                            )
                                          ],
                                        ),
                                      ))
                            ],
                          ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
