import 'package:authentication_app/src/repository/authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        leading: Container(
          child: IconButton(
            onPressed: (){
              AuthenticationRepository.instance.logout();
            }, icon: Icon(Icons.menu, color: Colors.black,),
          ),
        ),
        backgroundColor: Colors.white,
        title: Text("Authentication App", style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,

        ),

        ),
        centerTitle: true,
        elevation: 0,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20,top:7),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color:Colors.blueGrey,

            ),
            child: Icon(Icons.man),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hey This is an AUthentication APP"
              ,style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(
                  border: Border(left: BorderSide(width: 4)),
                ),
                child: Row(
                  children: [
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
