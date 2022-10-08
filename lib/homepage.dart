import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final searchcontroller = TextEditingController();
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Container(
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(25),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://thispersondoesnotexist.com/image"),
                    ),
                  ),
                ),
              )
            ],
            leading: IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {},
            )),
        body: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Our",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.w100),
                  ),
                  Text(
                    "Popular Courses",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0xFFF2F2F2),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              icon: Icon(
                                Icons.search,
                                color: Colors.black,
                              ),
                              hintText: "Search Course"),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: const [BoxShadow(color: Colors.red)],
                            borderRadius: BorderRadius.circular(12),
                            color: const Color(0x0fffbbfb),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.filter_1_rounded,
                              color: Colors.white,
                            ),
                          ),
                        )),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    Categori(),
                    Categori(),
                    Categori(),
                    Categori(),
                    Categori(),
                    Categori(),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [CoustomCard(), CoustomCard()],
                ),
              )
            ],
          ),
        ));
  }
}

class Categori extends StatelessWidget {
  const Categori({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
      ),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: const [
              Icon(
                Icons.phone_android,
                color: Colors.black,
              ),
              SizedBox(
                width: 5.0,
              ),
              Text("Mobile")
            ],
          ),
        ),
      ),
    );
  }
}

class CoustomCard extends StatelessWidget {
  const CoustomCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Card(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Image.network(
                "https://storage.googleapis.com/cms-storage-bucket/bb151b932844205ac418.jpg",
                scale: 4,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Mobile App Development"),
            ),
          ],
        ),
      ),
    );
  }
}
