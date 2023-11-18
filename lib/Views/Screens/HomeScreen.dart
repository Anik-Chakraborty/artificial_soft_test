import 'package:artificial_test/Controller/LeaderBoardController.dart';
import 'package:artificial_test/Views/Widgets/LeaderDetailsCard.dart';
import 'package:artificial_test/resources/Color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: skyBlue,
        centerTitle: true,
        title: Text('Home Screen',
            style: GoogleFonts.montserrat(
              fontSize: 20,
              color: white,
              fontWeight: FontWeight.w500,
            )),
      ),
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(10),
          child: FutureBuilder(
            future: fetchLeaderBoard(context),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Center(
                    child: Container(
                      width: 80,
                      height: 80,
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: white),
                      child: const CircularProgressIndicator(
                        backgroundColor: transparent,
                        color: skyBlue,
                      ),
                    ),
                  ),
                );
              } else if (snapshot.connectionState == ConnectionState.done) {
                List result = snapshot.data as List;
                debugPrint(result.length.toString());
                if (result.length == 0) {
                  return Center(
                    child: Text('No Data Found',
                        style: GoogleFonts.montserrat(
                          fontSize: 20,
                          color: black,
                          fontWeight: FontWeight.w500,
                        )),
                  );
                }
                return ListView.builder(
                  itemBuilder: (context, index) {
                    return LeaderDetailsCard(
                        profile_pic: result[index]['profile_pic'],
                        first_name: result[index]['first_name'],
                        last_name: result[index]['last_name'],
                        gender: result[index]['gender'],
                        user_tag: result[index]['user_tag']);
                  },
                  itemCount: result.length,
                );
              } else {
                return Center(
                  child: Text('Something Went Wrong, Try Later',
                      style: GoogleFonts.montserrat(
                        fontSize: 20,
                        color: black,
                        fontWeight: FontWeight.w500,
                      )),
                );
              }
            },
          )),
    );
  }
}
