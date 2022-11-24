import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:counter_7/model/mywatchlist.dart';
import 'package:counter_7/utils/drawer.dart';

class MyWatchListDetails extends StatelessWidget {
  final MyWatchList datawl;
  const MyWatchListDetails({super.key, required this.datawl});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Film ${datawl.title}'),
      ),
      drawer: Drawerz(),
      body: Column(
        children: [
          Center(
            child: Text(datawl.title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
          ),
          Row(
            children: [
              Text("Release Date: ${datawl.release_date}",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18)),
            ],
          ),
          Row(
            children: [
              Text("Rating: ${datawl.rating}",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18)),
            ],
          ),
          Row(
            children: [
              const Text(
              "Status: ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
              datawl.watched ? 'sudah' : 'belum',
              style: const TextStyle(fontSize: 20),
            )
            ],
          ),
          Row(
            children: [
              Text("review: ${datawl.review}",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18)),
            ],
          ),
        ],
      ),
      persistentFooterButtons: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              minimumSize: const Size.fromHeight(50),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child:const Text(
              'return',
              style: TextStyle(fontSize:16),
          )
        )
      ],
    );
  }
}