import 'package:cinematix_app/controller/book.dart';
import 'package:cinematix_app/pages/bookseat.dart';
import 'package:flutter/material.dart';
import 'package:chips_choice/chips_choice.dart';

class BookDate extends StatefulWidget {
  @override
  State<BookDate> createState() => _BookDateState();
}

class _BookDateState extends State<BookDate> {
  BookingdateControlller c = BookingdateControlller();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white24,
          elevation: 0,
          leading: BackButton(color: Colors.black),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Text(
                "Choose Date",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            ChipsChoice<int>.single(
              value: c.tag2,
              onChanged: (val) => setState(() => c.tag2 = val),
              choiceItems: C2Choice.listFrom<int, String>(
                source: c.options2,
                value: (i, v) => i,
                label: (i, v) => v,
                disabled: (i, v) => [2].contains(i),
              ),
              choiceStyle: C2ChipStyle.filled(
                  height: 90,
                  foregroundColor: Colors.black,
                  color: Colors.grey[200],
                  selectedStyle: C2ChipStyle(
                      backgroundColor: Color(0xff2F0069),
                      foregroundColor: Colors.white)),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Text(
                "Paris Van Java",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            ChipsChoice<String>.multiple(
              value: c.tags,
              onChanged: (val) => setState(() => c.tags = val),
              choiceItems: C2Choice.listFrom<String, String>(
                source: c.options,
                value: (i, v) => v,
                label: (i, v) => v,
                disabled: (i, v) => [2].contains(i),
              ),
              choiceStyle: C2ChipStyle.filled(
                  height: 50,
                  foregroundColor: Colors.black,
                  color: Colors.grey[200],
                  selectedStyle: C2ChipStyle(
                      backgroundColor: Color(0xff2F0069),
                      foregroundColor: Colors.white)),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Text(
                "Cihampelas Walk",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            ChipsChoice<String>.multiple(
              value: c.tagCW,
              onChanged: (val) => setState(() => c.tagCW = val),
              choiceItems: C2Choice.listFrom<String, String>(
                source: c.optionsCW,
                value: (i, v) => v,
                label: (i, v) => v,
                disabled: (i, v) => [2].contains(i),
              ),
              choiceStyle: C2ChipStyle.filled(
                  height: 50,
                  foregroundColor: Colors.black,
                  color: Colors.grey[200],
                  selectedStyle: C2ChipStyle(
                      backgroundColor: Color(0xff2F0069),
                      foregroundColor: Colors.white)),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Text(
                "Bandung Electronic Center",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            ChipsChoice<String>.multiple(
              value: c.tagsBEC,
              onChanged: (val) => setState(() => c.tagsBEC = val),
              choiceItems: C2Choice.listFrom<String, String>(
                source: c.optionsBEC,
                value: (i, v) => v,
                label: (i, v) => v,
                disabled: (i, v) => [2].contains(i),
              ),
              choiceStyle: C2ChipStyle.filled(
                  height: 50,
                  foregroundColor: Colors.black,
                  color: Colors.grey[200],
                  selectedStyle: C2ChipStyle(
                      backgroundColor: Color(0xff2F0069),
                      foregroundColor: Colors.white)),
            ),
            SizedBox(height: 30),
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
                            builder: (context) => BookSeat(),
                          ));
                    },
                    child: Text("Continue to Book",
                        style: TextStyle(fontWeight: FontWeight.bold))),
              ),
            ),
          ],
        ));
  }
}
