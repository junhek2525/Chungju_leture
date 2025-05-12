import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text("TO-DO 맵")),
      body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           ElevatedButton(
             onPressed: () => Navigator.pushNamed(context,"/todo-local"),
             child: const Text("로컬 TO-TO"),
           ),
           ElevatedButton(
             onPressed: () => Navigator.pushNamed(context,"/todo-remote"),
             child: const Text("클라우드 TO-TO"),
           )

         ],
       )

      )


    );
  }
}
