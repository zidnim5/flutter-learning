import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:learning/presentation/page_three/components/category_card_component.dart';
import 'package:learning/presentation/page_three/components/list_component.dart';
import 'package:learning/presentation/page_three/components/my_card_component.dart';

class PageThree extends StatelessWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: "News"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Profile")
          ],
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                  ),
                ),
                child: SafeArea(
                  child: Column(
                    children: [
                      //  appBar
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                "My",
                                style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 2,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Cards",
                                style: TextStyle(
                                    fontSize: 26,
                                    letterSpacing: 1,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.purple[400],
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      //  card horiz list
                      Container(
                        height: 205,
                        child: ListView(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          clipBehavior: Clip.none,
                          children: [
                            MyCardThree(
                              card_number: "3456",
                              expired: "24/10",
                              tabungan: "\$99,999.50",
                              primaryColor: Colors.orange.shade700,
                              secondaryColor: Colors.red,
                            ),
                            MyCardThree(
                              card_number: "2345",
                              expired: "22/12",
                              tabungan: "\$5,999.50",
                              primaryColor: Colors.blue.shade700,
                              secondaryColor: Colors.blue,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      )
                    ],
                  ),
                ),
              ),
              //category

              Container(
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CategoryCardThree(
                            title: "Send",
                            icon: Icons.send_to_mobile,
                            color: Colors.blue,
                          ),
                          CategoryCardThree(
                            title: "Pay",
                            icon: Icons.payments_outlined,
                            color: Colors.purpleAccent,
                          ),
                          CategoryCardThree(
                            title: "Bills",
                            icon: Icons.payment,
                            color: Colors.orange,
                          ),
                          CategoryCardThree(
                            title: "Mutation",
                            icon: Icons.history_sharp,
                            color: Colors.green,
                          ),
                        ],
                      ),

                      SizedBox(
                        height: 25,
                      ),

                      Container(
                          decoration: BoxDecoration(),
                          child: Column(
                            children: [
                              ListThree(
                                icon: Icons.query_stats,
                                title: "Statistic",
                                desc: "Payment and Income",
                                color: Colors.purpleAccent,
                              ),
                              ListThree(
                                icon: Icons.credit_card_sharp,
                                title: "Transaction",
                                desc: "Transaction history",
                                color: Colors.lightBlue,
                              ),
                              ListThree(
                                icon: Icons.query_stats,
                                title: "Statistic",
                                desc: "Payment and Income",
                                color: Colors.purpleAccent,
                              ),
                              ListThree(
                                icon: Icons.credit_card_sharp,
                                title: "Transaction",
                                desc: "Transaction history",
                                color: Colors.lightBlue,
                              ),
                            ],
                          )) //l
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
