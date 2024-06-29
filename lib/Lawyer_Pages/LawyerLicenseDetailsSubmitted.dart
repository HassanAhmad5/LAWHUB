// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lawhub/Lawyer_Pages/LawyerAppBar&NavBar.dart';


class LawyerLicenseDetailsSubmitted extends StatelessWidget{
  const LawyerLicenseDetailsSubmitted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBar(
          toolbarHeight: 70,
          leadingWidth: 40,
          backgroundColor: Colors.blue,
          leading: const SizedBox(),
          title: const Padding(
              padding: EdgeInsets.only(top: 13),
              child: Text(
                "Details Submitted",
                style: TextStyle(
                    fontFamily: 'roboto',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              )
          ),
          centerTitle: true,


          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25)),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: const SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 80,),
              Text(
                "License Details Submitted",
                style: TextStyle(
                  fontFamily: 'roboto',
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Successfully",
                style: TextStyle(
                  fontFamily: 'roboto',
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Icon(FontAwesomeIcons.solidCircleCheck, size: 50 ,color: Colors.blue),
              SizedBox(
                height: 15,
              ),
              Text(
                "Your License Details has been Submitted!",
                style: TextStyle(
                  fontFamily: 'roboto',
                  fontSize: 16,
                ),
              )
            ],
          )
      ),
      floatingActionButton:
      Padding(
        padding: const EdgeInsets.only(left: 35),
        child: SizedBox(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                          const LawyerAppbarNavBar()));
                },
                child: Container(
                  height: 40,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: const Center(child: Text('Home',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'roboto',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      )),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}