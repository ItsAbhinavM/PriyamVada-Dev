import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
            Text("Notes",style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: 14,fontWeight: FontWeight.bold,color: Color(0xff6D6464)),)
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Expanded(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Chapter 1: ",style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w500,fontSize: 18),),
                          SizedBox(width: screenWidth*0.01,),
                          Flexible(child: Text("Adiparva ",style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w500,fontSize: 18),softWrap: true)),
                        ],
                      ),
                      Text("Created on 8th August 2024 at 10:45 ",style: Theme.of(context).textTheme.headlineSmall,softWrap: true,overflow: TextOverflow.fade,)
                    ],
                  ),
                ),
                Icon(Icons.delete)
              ],
            ),
            SizedBox(height: screenHieght*.025,),
            Text("Note at 05:29:36",style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w500,fontSize: 18)),
            SizedBox(height: screenHieght*.0125,),
            Text("How the Mahābhārata came to be narrated by Sauti to the assembled rishis at Naimisharanya, after having been recited at the sarpasattra of Janamejaya by Vaisampayana at Takshashila. The history and genealogy of the Bharata and Bhrigu races are recalled, as is the birth and early life of the Kuru princes (adi means first). Adi parva describes Pandava's birth, childhood, education, marriage, struggles due to conspiracy as well as glorious achievements.",style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w300,fontSize: 18))
          ],
        ),
      ),
    );
  }
}