import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Checkout \n   Movie",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white24,
        elevation: 0,
        centerTitle: true,
        leading: BackButton(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    width: 100,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage("assets/img/appbarseat.png"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(width: 20),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          textAlign: TextAlign.start,
                          "Avengers: Infinity Wars",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text(
                          textAlign: TextAlign.start,
                          "Action – English",
                          style: TextStyle(
                              color: Color(0xffADADAD),
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Row(
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
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 5),
            Divider(
              thickness: 2,
              color: Color(0xffE4E4E4),
            ),
            SizedBox(height: 5),
            DetailCheckout(
              name: "ID Order",
              detail: "22081996",
            ),
            DetailCheckout(
              name: "Cinema",
              detail: "Paris Van Java",
            ),
            DetailCheckout(
              name: "Date & Time",
              detail: "Sat 21, 12:20",
            ),
            DetailCheckout(
              name: "Seat Number",
              detail: "B3, B4",
            ),
            DetailCheckout(
              name: "Price",
              detail: "Rp 12.500.000 x 2",
            ),
            DetailCheckout(
              name: "Fee",
              detail: "Rp 290.000 x 2",
            ),
            DetailCheckout(
              name: "Total",
              detail: "Rp 25.106.000",
            ),
            Divider(
              thickness: 2,
              color: Color(0xffE4E4E4),
            ),
            SizedBox(height: 5),
            DetailCheckout(
              name: "Your Wallet",
              detail: "Rp 480.500.500",
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
                    child: Text("Checkout Now",
                        style: TextStyle(fontWeight: FontWeight.bold))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailCheckout extends StatelessWidget {
  DetailCheckout({
    required this.detail,
    required this.name,
    Key? key,
  }) : super(key: key);

  String? name;
  String? detail;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          textAlign: TextAlign.start,
          "$name",
          style: TextStyle(
            color: Color(0xffADADAD),
            fontSize: 16,
          ),
        ),
        Text(
          textAlign: TextAlign.start,
          "$detail",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
