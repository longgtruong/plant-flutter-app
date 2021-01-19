import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/components/home_body.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Padding(
            padding: EdgeInsets.only(top: 5, left: 15),
            child: SvgPicture.asset("assets/icons/filter-results-button.svg",
                color: Colors.grey),
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Padding(
                padding: EdgeInsets.only(top: 5, right: 15),
                child: Icon(Icons.search)),
            color: Colors.grey,
            onPressed: () {},
          )
        ],
      ),
      body: HomeBody(),
    );
  }
}
