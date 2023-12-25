import 'package:flutter/material.dart';


class Points extends StatefulWidget {
  const Points({super.key});

  @override
  State<Points> createState() => _PointsState();
}

class _PointsState extends State<Points> {
int teamAPoints=0;

  int teamBPoints=0;

  void addOnePoint(){
    print('add one point');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Center(child: Text('Point Counter')),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           const SizedBox(height: 32,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 600,
                  child: Column(
                    children: [

                      const Text('Team A',style: TextStyle(fontSize: 42),),
                      Text('$teamAPoints',style: TextStyle(fontSize: 200),),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: const Size(150, 50)
                        ),
                          onPressed: () {
                            addOnePoint();

                            setState(() {
                              teamAPoints++;
                            });
                            print(teamAPoints);
                          },
                          child: const Text('Add point 1' ,style: TextStyle(fontSize: 18,color: Colors.black),)),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: const Size(150, 50)
                          ),
                          onPressed: (){
                            setState(() {
                              teamAPoints=teamAPoints+2;
                            });
                            print(teamAPoints);
                          },
                          child: const Text('Add point 2' ,style: TextStyle(fontSize: 18,color: Colors.black),)),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: const Size(150, 50)
                          ),
                          onPressed: (){},
                          child: const Text('Add point 3' ,style: TextStyle(fontSize: 18,color: Colors.black))),


                    ],

                  ),
                ),

                const SizedBox(
                  height: 450,
                  child: VerticalDivider(
                    thickness: 2,

                  ),
                ),
                SizedBox(
                  height: 600,
                  child: Column(
                    children: [
                      const Text('Team B',style: TextStyle(fontSize: 42),),
                       Text('$teamBPoints',style: TextStyle(fontSize: 200),),

                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: const Size(150, 50)
                          ),
                          onPressed: (){},
                          child: const Text('Add point 1' ,style: TextStyle(fontSize: 18,color: Colors.black),)),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: const Size(150, 50)
                          ),
                          onPressed: (){},
                          child: const Text('Add point 2' ,style: TextStyle(fontSize: 18,color: Colors.black),)),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: const Size(150, 50)
                          ),
                          onPressed: (){},
                          child: const Text('Add point 3' ,style: TextStyle(fontSize: 18,color: Colors.black))),

                    ],


                  ),
                ),

              ],
            ),

            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                    minimumSize: const Size(150, 50)
                ),
                onPressed: (){
                  setState(() {
                    teamAPoints=0;
                    teamBPoints=0;
                  });
                },
                child: const Text('reset' ,style: TextStyle(fontSize: 18,color: Colors.black),)),
          ],
        ),

      ),
    );
  }
}
