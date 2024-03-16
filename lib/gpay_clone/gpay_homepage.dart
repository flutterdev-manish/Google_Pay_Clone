import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:gpay_clone/Gpay_clone/circle_people.dart';
import 'package:gpay_clone/constants.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool seeMore = false;

  List people = [
    {"contact": "Apple"},
    {"contact": "Boy"},
    {"contact": "Cat"},
    {"contact": "Dog"},
    {"contact": "Eye"},
    {"contact": "Fish"},
    {"contact": "Girl"},
    {"contact": "Hen"},
    {"contact": "Ice"},
    {"contact": "Jug"},
    {"contact": "Kite"},
    {"contact": "Lion"},
    {"contact": "Man"},
    {"contact": "Nest"},
    {"contact": "Owl"},
    {"contact": "Less"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 40.0, horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50.0),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 12,
                        ),
                      ],
                    ),
                    child: const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 12.0),
                          child: Icon(Icons.search),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Search",
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 35.0,
                    height: 35.0,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/manish.jpg'),
                      ),
                      borderRadius: BorderRadius.circular(50.0),
                      // color: Colors.red,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/gpayhm.jpg',
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 70,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      'assets/images/gplogo.png',
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.qr_code_scanner_outlined,
                            color: iconClr,
                            size: 30,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Scan any\nQR code",
                            textAlign: TextAlign.center,
                            style: textStyle,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Icon(
                            Icons.alternate_email_rounded,
                            color: iconClr,
                            size: 30,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Pay UPI ID\nor number",
                            textAlign: TextAlign.center,
                            style: textStyle,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.phone,
                            color: iconClr,
                            size: 30,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Pay\ncontacts",
                            textAlign: TextAlign.center,
                            style: textStyle,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Icon(
                            Icons.person,
                            color: iconClr,
                            size: 30,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Self-\ntransfer",
                            textAlign: TextAlign.center,
                            style: textStyle,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.mobile_screen_share,
                            color: iconClr,
                            size: 30,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Pay phone\nnumber",
                            textAlign: TextAlign.center,
                            style: textStyle,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Icon(
                            Icons.receipt_long_sharp,
                            color: iconClr,
                            size: 30,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Pay\nbills",
                            textAlign: TextAlign.center,
                            style: textStyle,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.account_balance_outlined,
                            color: iconClr,
                            size: 30,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Bank\ntransfer",
                            textAlign: TextAlign.center,
                            style: textStyle,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Icon(
                            Icons.smartphone,
                            color: iconClr,
                            size: 30,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Mobile\nrecharge",
                            textAlign: TextAlign.center,
                            style: textStyle,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      DottedBorder(
                        borderType: BorderType.RRect,
                        padding: const EdgeInsets.all(6),
                        radius: const Radius.circular(20),
                        color: Colors.grey,
                        strokeWidth: 1,
                        child: const Row(
                          children: [
                            Text(
                              "Activate UPI Lite",
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.add_circle_outline,
                              size: 18,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                      Container(
                          height: 30,
                          width: 210,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.blue.withOpacity(0.1),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "UPI ID:m4manishkrswami-2@okaxis",
                            ),
                          )),
                    ],
                  ),
                  const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                    child: Text(
                      'People',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 4,
                      childAspectRatio: 1,
                    ),
                    itemCount: seeMore == true
                        ? people.length
                        : people.length < 4
                            ? people.length
                            : 8,
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                              color: Colors.primaries[index],
                              borderRadius: BorderRadius.circular(50),
                            ),
                            // color of grid items
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                seeMore == false
                                    ? index == 7
                                        ? GestureDetector(
                                            onTap: () {
                                              if (index == 7) {
                                                setState(() {
                                                  seeMore = !seeMore;
                                                });
                                              }
                                            },
                                            child: Container(
                                                height: 55,
                                                width: 55,
                                                decoration: BoxDecoration(
                                                  color: Colors.orange,
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                                child: seeMore == false
                                                    ? Icon(seeMore
                                                        ? Icons.expand_less
                                                        : Icons.expand_more)
                                                    : Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                left: 23,
                                                                top: 20),
                                                        child: Text(
                                                          people[index]
                                                                  ["contact"]
                                                              .toString()
                                                              .substring(0, 1),
                                                          style: textStyle,
                                                        ),
                                                      )),
                                          )
                                        : Text(
                                            people[index]["contact"]
                                                .toString()
                                                .substring(0, 1),
                                            style: textStyle,
                                          )
                                    : index == people.length-1
                                    ? GestureDetector(
                                        onTap: () {
                                          if (index == people.length-1) {
                                            setState(() {
                                              seeMore = !seeMore;
                                            });
                                          }
                                        },
                                        child: Container(
                                            height: 55,
                                            width: 55,
                                            decoration: BoxDecoration(
                                              color: Colors.orange,
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                            child: seeMore == true
                                                ? Icon(seeMore
                                                    ? Icons.expand_less
                                                    : Icons.expand_more)
                                                : Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 23, top: 20),
                                                    child: Text(
                                                      people[index]["contact"]
                                                          .toString()
                                                          .substring(0, 1),
                                                      style: textStyle,
                                                    ),
                                                  )),
                                      )
                                    : Text(
                                        people[index]["contact"]
                                            .toString()
                                            .substring(0, 1),
                                        style: textStyle,
                                      )
                                // color of grid items
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                              index == 7
                                  ? seeMore == false
                                      ? "More"
                                      : people[index]["contact"]
                                  :  index == people.length-1
                                  ? seeMore == true
                                      ? "Less"
                                      : people[index]["contact"]
                                 : people[index]["contact"],
                              style: textStyle)
                        ],
                      );
                    },
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // const CirclePeople(
                      //   peopleImage: AssetImage('assets/images/donald.jpg'),
                      //   peopleName: 'Donald',
                      // ),
                      // const CirclePeople(
                      //   peopleImage: AssetImage('assets/images/ratan.jpg'),
                      //   peopleName: 'Ratan',
                      // ),
                      // const CirclePeople(
                      //   peopleImage: AssetImage('assets/images/narendra.jpg'),
                      //   peopleName: 'Narendra',
                      // ),
                      Column(
                        children: [
                          // Container(
                          //   margin: const EdgeInsets.symmetric(
                          //     horizontal: 15.0,
                          //     vertical: 10.0,
                          //   ),
                          //   height: 60.0,
                          //   width: 60.0,
                          //   decoration: BoxDecoration(
                          //     border: Border.all(
                          //       color: Colors.grey,
                          //     ),
                          //     borderRadius: BorderRadius.circular(50.0),
                          //   ),
                          //   child: const Icon(
                          //     Icons.keyboard_arrow_down_outlined,
                          //     size: 50.0,
                          //     color: Colors.grey,
                          //   ),
                          // ),
                          // const Text('More'),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Businesses',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Container(
                          width: 100.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade300,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.shopping_bag_outlined,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Explore',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const CirclePeople(
                        peopleImage: AssetImage('assets/images/oyo.png'),
                        peopleName: 'OYO Rooms',
                      ),
                      const CirclePeople(
                        peopleImage: AssetImage('assets/images/flipkart.png'),
                        peopleName: 'Flipkart..',
                      ),
                      const CirclePeople(
                        peopleImage: AssetImage('assets/images/vi.png'),
                        peopleName: 'VI Post..',
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(
                              horizontal: 15.0,
                              vertical: 10.0,
                            ),
                            height: 60.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: const Icon(
                              Icons.keyboard_arrow_down_outlined,
                              size: 50.0,
                              color: Colors.grey,
                            ),
                          ),
                          const Text('More'),
                        ],
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20, top: 20),
                    child: Text(
                      'Bills & recharges',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20, top: 10),
                    child: Text(
                      'No bills due. try adding these!',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 60.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                              color: Colors.lightBlue.shade100,
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: const Icon(
                              Icons.tv,
                              size: 30.0,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "DTH/Cable\nTV",
                            textAlign: TextAlign.center,
                            style: textStyle,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 60.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                              color: Colors.lightBlue.shade100,
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: const Icon(
                              Icons.lightbulb_outline_sharp,
                              size: 30.0,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Electricity",
                            textAlign: TextAlign.center,
                            style: textStyle,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 60.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                              color: Colors.lightBlue.shade100,
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: const Icon(
                              Icons.phone_android_outlined,
                              size: 30.0,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Postpaid\nmobile",
                            textAlign: TextAlign.center,
                            style: textStyle,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 60.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                              color: Colors.lightBlue.shade100,
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: const Icon(
                              Icons.router_outlined,
                              size: 30.0,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Broadband\nrouter",
                            textAlign: TextAlign.center,
                            style: textStyle,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                height: 40,
                width: 90,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    "See all",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Text(
                'Offers and rewards',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                Column(
                  children: [
                    Container(
                      height: 90.0,
                      width: 90.0,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('assets/images/rewards.png'),
                        ),
                        // color: Colors.lightBlue.shade100,
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                    Text("Rewards",
                        textAlign: TextAlign.center, style: textStyle),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 90.0,
                      width: 90.0,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage(
                            'assets/images/offers.png',
                          ),
                        ),
                        // color: Colors.lightBlue.shade100,
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                    Text("Offers",
                        textAlign: TextAlign.center, style: textStyle),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 90.0,
                      width: 90.0,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('assets/images/referrals.png'),
                        ),
                        // color: Colors.lightBlue.shade100,
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                    Text("Referrals",
                        textAlign: TextAlign.center, style: textStyle),
                  ],
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Text(
                'Manage your money',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.speed_outlined,
                  color: iconClr,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Check your CIBIL score for free",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  width: 85,
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.history,
                  color: iconClr,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "See transaction history",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  width: 140,
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.account_balance_outlined,
                  color: iconClr,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Check bank balance",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  width: 160,
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 275.0,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/bottom.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Showing businesses based on your location - Learn more",
                  style: TextStyle(color: Colors.black, fontSize: 10),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
