import 'package:cinematix_app/pages/checkout.dart';
import 'package:flutter/material.dart';
import 'package:chips_choice/chips_choice.dart';

import '../controller/book.dart';

class BookSeat extends StatefulWidget {
  const BookSeat({Key? key}) : super(key: key);

  @override
  State<BookSeat> createState() => _BookSeatState();
}

class _BookSeatState extends State<BookSeat> {
  BookingdateControlller c = BookingdateControlller();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Avengers \nInfinity War",
              style: TextStyle(color: Colors.black),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              width: 50,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/img/appbarseat.png"))),
            )
          ],
        ),
        backgroundColor: Colors.white24,
        elevation: 0,
        leading: BackButton(color: Colors.black),
      ),
      body: ListView(
        children: [
          Image.asset("assets/img/seatfigure.png"),
          Text(
            textAlign: TextAlign.center,
            "Cinema Screen",
            style: TextStyle(color: Color(0xffADADAD)),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: ChipsChoice<String>.multiple(
                wrapped: true,
                value: c.seat,
                onChanged: (val) => setState(() => c.seat = val),
                choiceItems: C2Choice.listFrom<String, String>(
                    source: c.optionsSeats,
                    value: (i, v) => v,
                    label: (i, v) => v,
                    disabled: (i, v) => [0, 4].contains(i)),
                choiceStyle: C2ChipStyle.filled(
                    height: 50,
                    foregroundColor: Colors.black,
                    color: Colors.grey[200],
                    selectedStyle: C2ChipStyle(
                        backgroundColor: Color(0xff2F0069),
                        foregroundColor: Colors.white)),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(right: 10),
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    color: Color(0xffE4E4E4),
                    borderRadius: BorderRadius.circular(5)),
              ),
              Text("Available"),
              SizedBox(width: 10),
              Container(
                margin: EdgeInsets.only(right: 10),
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    color: Color(0xff2F0069),
                    borderRadius: BorderRadius.circular(5)),
              ),
              Text("Selected")
            ],
          ),
          SizedBox(height: 60),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 29),
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
                          builder: (context) => CheckoutPage(),
                        ));
                  },
                  child: Text("Continue Checkout",
                      style: TextStyle(fontWeight: FontWeight.bold))),
            ),
          ),
          Text("sad"),
        ],
      ),
    );
  }
}
