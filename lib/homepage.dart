import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key,required this.title}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Slidable(
          startActionPane: ActionPane(
            motion: const StretchMotion(),
            children: [
              SlidableAction(onPressed: ((context){
                //call number
              }),
              backgroundColor: Colors.green,
              icon:Icons.phone ,),
              SlidableAction(onPressed: ((context){
                //call number
              }),
              backgroundColor: Colors.blue,
              icon:Icons.chat ,),
            ],
          ),
          endActionPane: ActionPane(
            motion: const StretchMotion(),
            children: [
              SlidableAction(onPressed: ((context){
                //delete
              }),
                backgroundColor: Colors.red,
                icon:Icons.delete ,),

            ],
          ),
          child: Container(
            color: Colors.grey[300],
            child: ListTile(
              title: Text('Yun Sung'),
              subtitle: Text('010-3361-1086'),
              leading: Icon(Icons.person,size: 40,),
            ),
          ),
        ),
      ),
    );
  }
}
