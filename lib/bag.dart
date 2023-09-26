// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, non_constant_identifier_names, sized_box_for_whitespace
import 'package:flutter/material.dart';

class bag extends StatefulWidget {
  bag({super.key});

  @override
  State<bag> createState() => _bagState();
}

class _bagState extends State<bag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              CategoriesItems("Bags",
                  "https://images.pexels.com/photos/2452345/pexels-photo-2452345.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
              SizedBox(
                height: 18,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Most Popular",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "All",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              //line 1
              Container(
                margin: EdgeInsets.all(13),
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CategoriesItems2(
                      "800tk",
                      "https://images.pexels.com/photos/3731256/pexels-photo-3731256.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CategoriesItems2(
                      "800tk",
                      "https://images.pexels.com/photos/2905238/pexels-photo-2905238.jpeg?auto=compress&cs=tinysrgb&w=600",
                    ),
                  ],
                ),
              ),
              //Line 2
              Container(
                margin: EdgeInsets.all(13),
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CategoriesItems2(
                      "800tk",
                      "https://images.pexels.com/photos/2422476/pexels-photo-2422476.png?auto=compress&cs=tinysrgb&w=600&lazy=load",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CategoriesItems2(
                      "800tk",
                      "https://images.pexels.com/photos/2393813/pexels-photo-2393813.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                    ),
                  ],
                ),
              ),
              //Line 3
              Container(
                margin: EdgeInsets.all(13),
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CategoriesItems2(
                      "800tk",
                      "https://images.pexels.com/photos/2393813/pexels-photo-2393813.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CategoriesItems2(
                      "800tk",
                      "https://images.pexels.com/photos/9785872/pexels-photo-9785872.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget CategoriesItems(
    text,
    image,
  ) {
    return AspectRatio(
      aspectRatio: 2 / 1.5,
      child: Container(
        decoration: BoxDecoration(
          // borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: NetworkImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.4),
                Colors.black.withOpacity(.2),
              ],
            ),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    text,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //2nd

  Widget CategoriesItems2(
    text,
    image,
  ) {
    return AspectRatio(
      aspectRatio: 3 / 3.4,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: NetworkImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.4),
                Colors.black.withOpacity(.2),
              ],
            ),
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                text,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
