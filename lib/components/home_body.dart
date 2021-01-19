import 'package:flutter/material.dart';
import 'package:plant_app/components/tree_card.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            "World of Plants",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
          ),
        ),
        Categories(),
        SizedBox(
            height: 400,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) => TreeCard())),
      ],
    );
  }
}

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Indoor", "Outdoor", "Popular", "Recommended"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            categories[index],
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: index == selectedIndex
                                    ? Color(0xFFE34522)
                                    : Colors.grey),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 2,
                            width: 20,
                            color: index == selectedIndex
                                ? Color(0xFFE34522)
                                : Colors.transparent,
                          )
                        ],
                      ),
                      SizedBox(
                        width: 40,
                      )
                    ],
                  ),
                ),
              )),
    );
  }
}
