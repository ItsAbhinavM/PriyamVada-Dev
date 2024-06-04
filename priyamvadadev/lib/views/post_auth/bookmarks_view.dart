import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bookmarks extends StatelessWidget {
  const Bookmarks({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHieght = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text("Mahabharata",style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w500,fontSize: 18),),
            SizedBox(height: screenHieght*0.01,),
            Text("Notes",style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: 14),)
          ],
        ),
        centerTitle: true,
        leading: IconButton(
              onPressed: () => (Navigator.pop(context)),
              icon: const Icon(CupertinoIcons.back)),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: screenWidth*0.10,right: screenWidth*0.10,top: screenWidth*0.10),
        child: Column(
          children: [
            Row(
              children: [
                Text("Chapter 1: ",style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w500,fontSize: 18),),
                SizedBox(width: screenWidth*0.01,),
                Text("Adiparva",style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w500,fontSize: 18),),
              ],
            )
          ],
        ),
      ),
    );
  }
}