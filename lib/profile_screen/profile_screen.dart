import 'package:flutter/material.dart';
import 'package:user_profile/widgets/text_data.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // starting for logo and name
               Container(
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 110),
                      child: Container(
                        child: Image(
                          image: AssetImage(
                            'images/img.png',
                          ),
                          fit: BoxFit.cover,
                        ),
                        height: 50,
                        width: 60,
                      ),
                    ),
                    Container(

                      child: Text(
                        "Name",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        child:Padding(
                            padding: EdgeInsets.only(left: 130),
                            child: Icon(Icons.edit)),
                      ),
                    ),

                  ],
                ),
              ),
            // end of logo and Name
            SizedBox(height: 15,),
            // starting for profile image part
            Center(
              child: Container(
                child: InkWell
              (
              child: CircleAvatar(

              radius: MediaQuery.of(context).size.width*0.15,
                    backgroundColor: Colors.white,
               child: Image.asset("images/profile_image.jpg"),


          ),
          ),
              ),
            ),
            // profile image done
            SizedBox(height: 15,),
              Container(
            child: TextData(
              text1: "Bio",
              text2: "Hello Myself Drake",
            ),
              ),
            SizedBox(height: 15,),
            //Bio container
            Container(

              child: TextData(
                text1: "First Name",
                text2: " Senku Ishigami",
              ),
            ),
            // name field
            SizedBox(height: 15,),
            Container(

              child: TextData(
                text1: "Address",
                text2: "Tokyo",
              ),
            ),
            SizedBox(height: 15,),
            Container(

              child: TextData(
                text1: "Phone Number",
                text2: "9120565741",
              ),
            ),
            SizedBox(height: 15,),
            Container(

              child: TextData(
                text1: "Skills",
                text2: "Java,HTML,CSS,Flutter,Dart",
              ),
            ),



            SizedBox(height: 15,),
            Container(

              child: TextData(
                text1: "Job Title",
                text2: "Programmer",
              ),
            ),
            SizedBox(height: 15,),
            Container(

              child: TextData(
                text1: "Gender",
                text2: "Male",
              ),
            ),







            

          ],

        ),
      ),

    );
  }
}
