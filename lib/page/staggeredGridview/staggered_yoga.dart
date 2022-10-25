import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:untitled/color_constant.dart';
import 'package:untitled/page/information_screen/information_screen.dart';
import 'package:untitled/page/videoplayer/video_player.dart';
import 'package:untitled/widget/custom_text_view.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEAF4F7),
      appBar: AppBar(
        elevation: 1,
        backgroundColor: cBackGroundWhite,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Image.asset("assets/images/chakraslogo.png"),
            const SizedBox(
              width: 5,
            ),
            const CustomTextView(
              text: "Mindfullness",
              fontColor: cBackGroundThree,
              fontWeight: FontWeight.w600,
            )
          ],
        ),
        actions: [
          IconButton(
              iconSize: 30,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const InformationScreen()));
              },
              icon: const Icon(
                Icons.info_rounded,
                color: cPrimaryOne,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomTextView(
                    text: "Yoga",
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                  ),
                  RichText(
                    text: const TextSpan(
                        text: "#stayathome",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                        children: [
                          TextSpan(
                              text: "  routine",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.normal))
                        ]),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      FittedBox(
                        child: ImageIcon(
                          AssetImage("assets/images/iconlotus.png"),
                          color: cPrimaryOne,
                        ),
                      ),
                      CustomTextView(
                        text: "10 exercise",
                        fontSize: 12,
                        fontColor: cBackGroundOne,
                        fontWeight: FontWeight.w500,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.watch_later_outlined,
                        color: cPrimaryOne,
                        size: 18,
                      ),
                      CustomTextView(
                        text: "10 mins",
                        fontSize: 12,
                        fontColor: cBackGroundOne,
                        fontWeight: FontWeight.w500,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      FittedBox(
                        child: ImageIcon(
                          AssetImage("assets/images/calories.png"),
                          color: cPrimaryOne,
                        ),
                      ),
                      CustomTextView(
                        text: "64 calories",
                        fontSize: 12,
                        fontColor: cBackGroundOne,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  PageTransition(
                      child: const YogaVideoPlay(),
                      type: PageTransitionType.rightToLeft)),
              child: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: StaggeredGrid.count(
                  crossAxisCount: 4,
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 0,
                  children: [
                    StaggeredGridTile.fit(
                      crossAxisCellCount: 2,
                      //  mainAxisExtent: 200,
                      child: Container(
                          height: 180,
                          decoration: BoxDecoration(
                              color: const Color(0xffFFFFFF),
                              borderRadius: BorderRadius.circular(12)),
                          margin: const EdgeInsets.only(
                              top: 60, left: 8, right: 5,
                              bottom: 8),
                          child: Center(
                              child: Column(
                                children: [
                                  Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(12),
                                        child: CachedNetworkImage(
                                          height: 122,
                                          width: double.infinity,
                                          fit: BoxFit.contain,
                                          imageUrl:
                                          "https://pngimg.com/uploads/yoga/yoga_PNG145.png",
                                          progressIndicatorBuilder:
                                              (context, url, downloadProgress) =>
                                              Center(
                                                child: CircularProgressIndicator(
                                                    value: downloadProgress.progress),
                                              ),
                                          errorWidget: (context, url, error) =>
                                          const Icon(Icons.error),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Container(
                                          height: 40,
                                          width: 40,
                                          margin: const EdgeInsets.all(8),
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              gradient: LinearGradient(
                                                  begin: Alignment.centerLeft,
                                                  end: Alignment.centerRight,
                                                  colors: [
                                                    cPrimaryTwo,
                                                    cSecondaryTwo
                                                  ])),
                                          child: IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.play_arrow_rounded,
                                              color: cBackGroundSix,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                          margin: const EdgeInsets.all(8),
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              gradient: LinearGradient(
                                                  begin: Alignment.centerLeft,
                                                  end: Alignment.centerRight,
                                                  colors: [
                                                    Colors.white,
                                                    Colors.grey,
                                                  ])),
                                          child: Center(
                                              child: IconButton(
                                                onPressed: () {},
                                                icon: const Icon(
                                                  Icons.download,
                                                  color: cBackGroundSix,
                                                  size: 16,
                                                ),
                                              )),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Flexible(
                                    child: Container(
                                        margin: const EdgeInsets.all(5),
                                        child: const CustomTextView(
                                          text: "Downward Dog Pose",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 19,
                                          textAlign: TextAlign.center,
                                          maxLine: 2,
                                        )),
                                  )
                                ],
                              ))),
                    ),
                    for (int i = 0; i < 10; i++)
                      StaggeredGridTile.fit(
                        crossAxisCellCount: 2,
                        //  mainAxisCellCount: 2,
                        //  mainAxisExtent: 200,
                        child: Container(
                            height: 180,
                            decoration: BoxDecoration(
                                color: Color(0xffFFFFFF),
                                borderRadius: BorderRadius.circular(12)),
                            margin: const EdgeInsets.only(left: 8, right: 8),
                            child: Center(
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Stack(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(12),
                                          child: CachedNetworkImage(
                                            height: 122,
                                            width: double.infinity,
                                            fit: BoxFit.contain,
                                            imageUrl:
                                            "https://pngimg.com/uploads/yoga/yoga_PNG145.png",
                                            progressIndicatorBuilder:
                                                (context, url, downloadProgress) =>
                                                Center(
                                                  child: CircularProgressIndicator(
                                                      value: downloadProgress.progress),
                                                ),
                                            errorWidget: (context, url, error) =>
                                            const Icon(Icons.error),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            height: 40,
                                            width: 40,
                                            margin: const EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                gradient: LinearGradient(
                                                    begin: Alignment.centerLeft,
                                                    end: Alignment.centerRight,
                                                    colors: [
                                                      cPrimaryTwo,
                                                      cSecondaryTwo
                                                    ])),
                                            child: IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.play_arrow_rounded,
                                                color: cBackGroundSix,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            height: 30,
                                            width: 30,
                                            margin: const EdgeInsets.all(8),
                                            decoration:  BoxDecoration(
                                                shape: BoxShape.circle,
                                                gradient: LinearGradient(
                                                    begin: Alignment.centerLeft,
                                                    end: Alignment.centerRight,
                                                    colors: [
                                                      cPrimaryTwo,
                                                      cSecondaryTwo
                                                    ])),
                                            child: Center(
                                                child: IconButton(
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                    Icons.download,
                                                    color: cBackGroundSix,
                                                    size: 16,
                                                  ),
                                                )),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Flexible(
                                      child: Container(
                                          margin: const EdgeInsets.all(5),
                                          child: Text(
                                          "hello"
                                          )),
                                    ),
                                  ],
                                ))),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
