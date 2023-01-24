import 'package:cinematix_app/pages/boookdate.dart';
import 'package:flutter/material.dart';

class MovieDetail extends StatelessWidget {
  const MovieDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [
            Container(
              width: double.maxFinite,
              height: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/img/detailmovie.png"),
                      fit: BoxFit.cover)),
            ),
            Positioned(
              bottom: 150,
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  )),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.transparent, Colors.white])),
              ),
            ),
          ],
        ),
        Expanded(
          child: ListView(
            children: [
              Text(
                  textAlign: TextAlign.center,
                  "Avengers: Infinity Wars",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Text(
                  textAlign: TextAlign.center,
                  "Action – English",
                  style: TextStyle(
                      color: Color(0xffADADAD),
                      fontSize: 12,
                      fontWeight: FontWeight.bold)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.star_border_outlined,
                    color: Colors.orange,
                  ),
                  SizedBox(width: 10),
                  Text("7/10")
                ],
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Text("Cast & Crew",
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Castcrewslider(
                          image: "assets/img/orng4.png", name: "Robbie Maggot"),
                      Castcrewslider(
                          image: "assets/img/orng3.png", name: "Tom\nHolland"),
                      Castcrewslider(
                          image: "assets/img/orng2.png", name: "Josh\nThanos"),
                      Castcrewslider(
                          image: "assets/img/orng5.png",
                          name: "Robert\nDowney Jr"),
                      Castcrewslider(
                          image: "assets/img/orng1.png",
                          name: "Chris\nHemsworth")
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Text(
                  "Storyline",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  child: Text(
                      "The near future, a time when both hope and hard ships drive humanity to look to the stars and beyond while a mysterious. \nNick Fury is compelled to launch the Avengers Initiative when Loki poses a threat to planet Earth. His squad of superheroes put their minds together to accomplish the task.",
                      style: TextStyle(
                          color: Color(0xffADADAD),
                          fontWeight: FontWeight.bold)),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 55),
                child: SizedBox(
                  height: 46,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xff2F0069),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BookDate(),
                            ));
                      },
                      child: Text("Continue to Book",
                          style: TextStyle(fontWeight: FontWeight.bold))),
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}

class Castcrewslider extends StatelessWidget {
  Castcrewslider({
    required this.image,
    required this.name,
    Key? key,
  }) : super(key: key);

  String? name;
  String? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
              margin: EdgeInsets.only(top: 10),
              alignment: Alignment.topCenter,
              width: 80,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset("${image}", fit: BoxFit.contain)),
                  Text(textAlign: TextAlign.center, "${name}")
                ],
              )),
        ),
      ],
    );
  }
}
