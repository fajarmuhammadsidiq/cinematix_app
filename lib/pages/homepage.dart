import 'package:cinematix_app/pages/movidedetail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          title: Row(
            children: [
              CircleAvatar(),
              SizedBox(width: 10),
              Text(
                "Hi, Otong",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          backgroundColor: Color(0xff2F0069),
          elevation: 0,
        ),
      ),
      body: Stack(
        children: [
          Container(
              height: 100,
              width: double.infinity,
              color: Color(0xff2F0069),
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Text("What movie do you want to \nwatch today?",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold))
                  ],
                ),
              )),
          Container(
            margin: EdgeInsets.only(top: 60),
            child: Column(
              children: [
                Container(
                  /*   height: 200, */
                  /*   color: Colors.green, */
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: Card(
                          elevation: 20,
                          child: ListTile(
                              title: Text(
                                "IDR 500.000",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              leading: Icon(
                                Icons.wallet_outlined,
                                size: 40,
                                color: Color(0xff2F0069),
                              ),
                              trailing: ElevatedButton.icon(
                                  style: ElevatedButton.styleFrom(
                                      primary: Color(0xff2F0069),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                  onPressed: () {},
                                  icon: Icon(CupertinoIcons.ticket_fill),
                                  label: Text("Promo"))),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 10,
                ),
                Expanded(
                  child: Container(
                    child: ListView(
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(children: [
                            Container(
                              height: 135,
                              width: 300,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/img/promo.png"),
                                      fit: BoxFit.contain)),
                            ),
                            Container(
                              height: 135,
                              width: 295,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/img/promo.png"),
                                      fit: BoxFit.contain)),
                            ),
                            Container(
                              height: 135,
                              width: 295,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/img/promo.png"),
                                      fit: BoxFit.contain)),
                            ),
                          ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: GridView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemCount: 20,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      childAspectRatio: 1 / 1.5,
                                      crossAxisSpacing: 20,
                                      mainAxisSpacing: 20),
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => MovieDetail(),
                                        ));
                                  },
                                  child: Container(
                                    color: Color(0xffFFFFFF),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 200,
                                          child: Image.asset(
                                            "assets/img/appbarseat.png",
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                        Text(
                                          "Avengers Infinity War",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text("R17+"),
                                            SizedBox(width: 10),
                                            Text("2D")
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.featured_video_outlined), label: "Movie"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.payment,
              color: Color(0xff2F0069),
            ),
            label: "pay"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.people,
              color: Color(0xff2F0069),
            ),
            label: "Account")
      ]),
    );
  }
}
