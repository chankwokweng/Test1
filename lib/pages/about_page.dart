// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tasks/components/icon_container.dart';
import 'package:tasks/components/task_card.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(18, 50, 50, 18),
          margin: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: const Color(0xFFf7be7c),
          ),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu, size:30),
                  Icon(Icons.search, size:30),
                  ],
                ),
                const SizedBox(
                  height:20
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height:80,
                      width:80,
                      margin: const EdgeInsets.only(left:30, right:30),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(image:AssetImage("img/john.png"),
                        )
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right:0),
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("K.W.Chan", style: TextStyle(fontSize: 25),),
                          Text("Software Developer", style: TextStyle(fontSize:18)),
                        ]
                    ),),
                  ],
                )
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left:18, right:18),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("My Tasks", style: TextStyle(fontSize: 30, color:Colors.blueGrey),),
                      IconContainer(size:30, width:80, height:80, bgColor: Colors.cyan, index:0, borderColor: Colors.grey,),
                    ],),
                  SizedBox(height: 20,),
                  TaskCard(index:1, taskName: "My tasks", taskDetail: "my things to do",),
                  SizedBox(height: 20,),
                  TaskCard(index:2, taskName: "My tasks - 2", taskDetail: "my things to do",),
                  SizedBox(height: 20,),
                  TaskCard(index:3, taskName: "My tasks - 3", taskDetail: "my things to do",),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("My Active Projects", style: TextStyle(fontSize: 30, color:Colors.green),),
                    ],),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Container(
                        width: 180,
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: Colors.lightBlue),
                        child: Column(
                          children: [
                            Padding(padding: const EdgeInsets.only(left:10, right:10, top:50),),
                            IconContainer(size:30, width:80, height:80, bgColor: Colors.lightBlue, index:4, borderColor: Colors.blue,),
                            SizedBox(height: 20,),
                            Text("Medical App", style: TextStyle(fontSize: 20, color:Colors.white),),
                            SizedBox(height: 20,),
                            Text("They make pills", style: TextStyle(fontSize: 14, color:Colors.white),),

                          ],)
                        ),
                        SizedBox(width:40),
                      Container(
                        width: 180,
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: Colors.red),
                        child: Column(
                          children: [
                            Padding(padding: const EdgeInsets.only(left:10, right:10, top:50),),
                            IconContainer(size:30, width:80, height:80, bgColor: Colors.red, index:4, borderColor: Colors.redAccent,),
                            SizedBox(height: 20,),
                            Text("Medical App", style: TextStyle(fontSize: 20, color:Colors.white),),
                            SizedBox(height: 20,),
                            Text("They make pills", style: TextStyle(fontSize: 14, color:Colors.white),),

                          ],)
                        ),
                      ],)
                ],
              ),
            ),
          )
          ),
      ],
    );
  }
}