// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tasks/components/person_detail_card.dart';
import 'package:tasks/models/people.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  List <Person> persons = [
    Person(
      name: "John",
      img: "img/john.png",
      job: "Software Developer",
      clock: "3:40" ),
    Person(
      name: "Mary",
      img: "img/mary.png",
      job: "Software Tester",
      clock: "7:40" ),
    Person(
      name: "Tom",
      img: "img/tom.png",
      job: "Software Engineer",
      clock: "10:10" ),
    Person(
      name: "Jason",
      img: "img/jason.png",
      job: "Software UI Desginer",
      clock: "11:40" ),
    Person(
      name: "Billy",
      img: "img/billy.png",
      job: "Software Developer",
      clock: "1:40" ),
    Person(
      name: "Rose",
      img: "img/rose.png",
      job: "Software Developer",
      clock: "3:00" ),
    Person(
      name: "John",
      img: "img/john.png",
      job: "Software Developer",
      clock: "3:40" ),
    Person(
      name: "Mary",
      img: "img/mary.png",
      job: "Software Tester",
      clock: "7:40" ),
    Person(
      name: "Tom",
      img: "img/tom.png",
      job: "Software Engineer",
      clock: "10:10" ),
    Person(
      name: "Jason",
      img: "img/jason.png",
      job: "Software UI Desginer",
      clock: "11:40" ),
    Person(
      name: "Billy",
      img: "img/billy.png",
      job: "Software Developer",
      clock: "1:40" ),
    Person(
      name: "Rose",
      img: "img/rose.png",
      job: "Software Developer",
      clock: "3:00" ),

  ];
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(18, 50, 18, 18),
          color: const Color(0xFFf7be7c),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Feed", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
              Icon(Icons.format_align_center_outlined,size:30),
            ],),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: persons.map(
                (p) {return PersonDetailCard(person:p);}).toList(),
            ),
          ),),
      ],
    );
  }
}