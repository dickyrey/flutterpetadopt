import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:petadoption/constant.dart';
import 'package:petadoption/model/category.dart';
import 'package:petadoption/model/pet.dart';
import 'package:petadoption/screens/fade_in_animation.dart';
import 'package:petadoption/screens/pet_detail.dart';
import 'package:petadoption/widgets/category_card.dart';
import 'package:petadoption/widgets/pet_card.dart';
import 'package:petadoption/widgets/zoom_scaffold.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Provider.of<MenuController>(context, listen: false).toggle();
          },
          child: Icon(
            FontAwesomeIcons.alignCenter,
            color: kPrimaryColor,
          ),
        ),
        title: Column(
          children: [
            Text("Location", style: kSubtitle2Style.copyWith(fontSize: 17)),
            Container(
              width: MediaQuery.of(context).size.width - 50,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.location_on, color: kPrimaryColor),
                  SizedBox(width: 12.0),
                  RichText(
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      text: TextSpan(children: [
                        TextSpan(text: "Ketapang, ", style: kTitleStyle),
                        TextSpan(text: "ID", style: kSubtitleStyle),
                      ]))
                ],
              ),
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: CircleAvatar(
              radius: 23,
              backgroundImage: AssetImage("assets/user1.jpg"),
            ),
          ),
          SizedBox(width: 20),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 50,
              color: Colors.white,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
                color: Colors.grey[100],
              ),
              child: AnimationLimiter(
                child: Column(
                  children: AnimationConfiguration.toStaggeredList(
                    duration: Duration(milliseconds: 375),
                    childAnimationBuilder: (widget) => SlideAnimation(
                      horizontalOffset: MediaQuery.of(context).size.width / 2,
                      child: FadeInAnimation(child: widget),
                    ),
                    children: [
                      SizedBox(height: 25.0),
                      FadeIn(
                        delay: 1,
                        child: Container(
                          width: double.infinity,
                          height: 50.0,
                          margin: EdgeInsets.symmetric(horizontal: 18.0),
                          padding: EdgeInsets.symmetric(horizontal: 12.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(FontAwesomeIcons.search, color: kText2Color),
                              SizedBox(width: 12),
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Search pet to adopt",
                                    border: InputBorder.none,
                                    hintStyle: kSubtitleStyle,
                                  ),
                                ),
                              ),
                              Icon(FontAwesomeIcons.slidersH,
                                  color: kText2Color)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 25.0),
                      FadeIn(
                        delay: 2,
                        child: Container(
                          width: double.infinity,
                          height: 120.0,
                          child: ListView.builder(
                            itemCount: categoryList.length,
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              var category = categoryList[index];
                              return CategoryCard(category: category);
                            },
                          ),
                        ),
                      ),
                      // SizedBox(height: 25),
                      ListView.builder(
                        itemCount: petList.length,
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        itemBuilder: (context, index) {
                          var pet = petList[index];

                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PetDetail(pet: pet),
                                ),
                              );
                            },
                            child: PetCard(pet: pet),
                          );
                        },
                      ),
                      SizedBox(height: 20)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
