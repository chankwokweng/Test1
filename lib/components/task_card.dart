// ignore_for_file: unnecessary_this

import 'package:flutter/material.dart';
import 'package:tasks/components/icon_container.dart';

class TaskCard extends StatelessWidget {
  final String taskName, taskDetail;
  final int index;

  const TaskCard({super.key,
    required this.index,
    required this.taskName,
    required this.taskDetail});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const IconContainer(size:30, width:80, height:80, bgColor: Colors.cyan, index:1, borderColor: Colors.grey,),
        const SizedBox( width:20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(this.taskName, style: const TextStyle(fontSize: 20),),
            Text(this.taskDetail, style: const TextStyle(fontSize: 14),),
          ],),
      ]
    );
  }
}