import 'package:flutter/material.dart';



class CircleCard extends StatelessWidget {
  const CircleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ const
            CircleAvatar(
             radius: 112,
              backgroundColor: Colors.white,
              child:CircleAvatar(
                radius: 110,
                backgroundImage: AssetImage('images/Birthday.png'),
              ),
            ),
            const Text('Ahmed Anas',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontFamily:'PlayfairDisplay-Bold.ttf' ,
            ),),
            const Text('Flutter DEV',style: TextStyle(color: Color(0XFF6C8090),fontSize: 18,fontFamily: 'Arial',fontWeight: FontWeight.bold,),
            ),

            const Divider(
          color: Colors.amberAccent,
              thickness: 1,
              indent: 60,
              endIndent: 60,
              height: 10,
            ),
            const Card(
              margin: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
              child: ListTile(
                leading: Icon(Icons.image,size: 32,color: Colors.grey,),
                title: Text('01112026147',style: TextStyle(fontSize: 24),
                ),
              ),
            ),

            const Card(
              margin: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
              child: ListTile(
                leading: Icon(Icons.image,size: 32,color: Colors.grey,),
                title: Text('01112026147',style: TextStyle(fontSize: 24),
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
              decoration: BoxDecoration(
              color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              height: 65,

              child: const Padding(
                padding:  EdgeInsets.only(left: 16),
                child: Row(
                  children: [
                    Icon(Icons.phone,size: 32,color: Color(0XFF6C8090),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 22),
                      child: Text('(+20) 1112026147',style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                height: 65,

                child: const Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: Row(
                    children: [
                      Icon(Icons.mail,size: 32,color: Color(0XFF6C8090),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text(
                          'ahmadanas4719@gmail.com',
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ) ,
      ),
    );
  }
}
