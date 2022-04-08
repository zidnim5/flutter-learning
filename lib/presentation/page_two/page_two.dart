import 'package:flutter/material.dart';
import 'package:learning/presentation/page_two/components/category_card_component.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.green,
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_border_sharp), label: "History"),
            BottomNavigationBarItem(icon: Icon(Icons.man), label: "Profil")
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(25),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Hi, Jared",
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 2,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "23 jan, 2021",
                                style: TextStyle(
                                  color: Colors.white70,
                                ),
                              )
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                                color: Colors.green[600],
                                borderRadius: BorderRadius.circular(12)),
                            child: Icon(
                              Icons.notifications_active,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.green[600],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 8,
                            ),
                            Icon(
                              Icons.search_rounded,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Search",
                              style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 2,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Expanded(
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(24),
                          topLeft: Radius.circular(24))),
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: Column(
                      children: [
                        //card
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Category",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                letterSpacing: 1,
                              ),
                            ),
                            Icon(Icons.more_horiz)
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CategoryCard(
                                title: "Relationship",
                                color: Colors.purpleAccent),
                            CategoryCard(
                                title: "Career", color: Colors.blueAccent),
                          ],
                        ),

                        SizedBox(
                          height: 16,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CategoryCard(
                                title: "Education", color: Colors.orangeAccent),
                            CategoryCard(
                                title: "Others", color: Colors.redAccent),
                          ],
                        ),

                        SizedBox(
                          height: 25,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Consultant",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                letterSpacing: 1,
                              ),
                            ),
                            Icon(Icons.more_horiz)
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        CustomList(),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }

  Container CustomList() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.green.withOpacity(0.4),
              offset: Offset(0, 0),
              spreadRadius: 0,
              blurRadius: 5,
            )
          ]),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  color: Colors.orange,
                  child: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Speaking Skill",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "16 Exercises",
                    style: TextStyle(
                      fontSize: 12,
                      letterSpacing: 1,
                    ),
                  )
                ],
              ),
              Spacer(),
              Icon(Icons.more_horiz)
            ],
          )
        ],
      ),
    );
  }
}
