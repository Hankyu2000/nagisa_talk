import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nagisatalk_mkii/main.dart';

class HomePage extends ConsumerWidget{

  Widget build(BuildContext context, WidgetRef ref){
    final textState = ref.watch(textProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("NagisaTalk"),
        elevation: 3,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.check_box, size: 30,),
            Text( textState, style: TextStyle(fontWeight: FontWeight.bold, fontSize:  30),),
            Text( "Text Argumentation and Listing Key", style: TextStyle(fontWeight: FontWeight.bold, fontSize:  30),)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: ()=> ref.read(textProvider.notifier).state = "Non-Aligned Gist Intelligence Semantic Automaton",
      child: Icon(Icons.add),),
    );
  }
}