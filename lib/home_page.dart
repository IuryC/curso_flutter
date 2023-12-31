// import 'package:curso_flutter/home_controller.dart';
// import 'package:flutter/material.dart';
//
// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     var controller = HomeController.of(context);
//
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home'),
//       ),
//       body: Center(
//         child: Text('O povo quer gozar ${controller.value}'),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add),
//         onPressed: () {
//           controller.increment();
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final controller = TextEditingController();
  final list = <String>[];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Curso Flutter'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                  Expanded(
                     child: TextField(
                       controller: controller,
                     ),
                  ),
                IconButton(
                  onPressed: (){
                    final text = controller.text;
                    setState(() {
                      list.add(text);
                    });
                    controller.clear();
                  },
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index){
              final item = list[index];

              return ListTile(title: Text(item),
              );
            }),
          ),
        ],
      )
    );
  }
}


