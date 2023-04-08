import 'package:flutter/material.dart';
import 'package:learner_education_app/repository/images.dart';
import 'package:learner_education_app/screens/fees_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 70,bottom: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                     // padding:  EdgeInsets.only(top: (200/screenHeight)*100),
                      child: Image(image: AssetImage("${onbardingImage["E13"]}")),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(height: 150,),
                            Image(image: AssetImage("${onbardingImage["E12"]}")),
                            SizedBox(height: 60,),
                            Image(image: AssetImage("${onbardingImage["E11"]}")),
                            SizedBox(height: 10,),
                          ],
                        ),
                        const SizedBox(width: 60,),
                      ],
                    ),
                    Image(image: AssetImage("${onbardingImage["E8"]}")),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 80,),
                    SizedBox(
                      width: 365,
                        height: 365,
                        child: Image(image: AssetImage("${onbardingImage["W"]}"))),
                  ],
                ),

              ],
            ),

            Container(
              alignment: AlignmentDirectional.bottomEnd,
              child: Padding(
                padding: const EdgeInsets.only(right: 60,bottom: 20),
                child: Image(image: AssetImage("${onbardingImage["E10"]}")),
              ),
            ),

            Column(
              children: [
                const Text(
                  "Welcome to",
                  style: TextStyle(
                    color: Color(0xff161C2B),
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Learner",
                  style: TextStyle(
                    color: Color(0xff161C2B),
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 30,right: 30,top:10, bottom: 40),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt dolore magna aliqua",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff6F6F79),
                      fontSize: 14,
                    ),
                  ),
                ),

                ElevatedButton(
                  onPressed: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder:(context)
                              =>FeesScreen()
                          )
                        );
                    },
                  style:ElevatedButton.styleFrom(
                    backgroundColor:Color(0xff4E74F9),
                    padding:const EdgeInsets.symmetric(horizontal: 110,vertical: 15),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(13)))
                  ),
                  child:const Text(
                    "Get Started",
                    style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 16,
                    ),
                  ),

                ),

              ],
            ),


          ],
        ),
      ),
    );
  }
}
