import 'package:artificial_test/resources/Color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LeaderDetailsCard extends StatelessWidget {
  final String profile_pic, first_name, last_name, gender, user_tag;

  const LeaderDetailsCard(
      {super.key,
      required this.profile_pic,
      required this.first_name,
      required this.last_name,
      required this.gender,
      required this.user_tag});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: yellow, borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
                height: 100,
                width: 100,
                child: Image.network(profile_pic, fit: BoxFit.contain)),
            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('$first_name ',
                        style: GoogleFonts.montserrat(
                          fontSize: 15,
                          color: white,
                          fontWeight: FontWeight.w500,
                        )),
                    Text(last_name,
                        style: GoogleFonts.montserrat(
                          fontSize: 15,
                          color: white,
                          fontWeight: FontWeight.w500,
                        )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Gender : $gender",
                    style: GoogleFonts.montserrat(
                      fontSize: 10,
                      color: white,
                      fontWeight: FontWeight.w500,
                    )),
                SizedBox(
                  height: 10,
                ),
                Text('User Tag : $user_tag',
                    style: GoogleFonts.montserrat(
                      fontSize: 10,
                      color: white,
                      fontWeight: FontWeight.w500,
                    )),
              ],
            ),
          ],
        ));
  }
}
