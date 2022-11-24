import 'package:counter_7/form.dart';
import 'package:counter_7/model/budget.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/model/showbudget.dart';
import 'package:counter_7/page/MyWatchListDetails.dart';
import 'package:counter_7/page/MyWatchListPage.dart';

class Drawerz extends StatelessWidget {
  const Drawerz({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // Menambahkan clickable menu
          ListTile(
            title: const Text('Counter_7'),
            onTap: () {
              // Route menu ke halaman utama
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => const MyHomePage(
                          title: 'Program Counter',
                        )),
              );
            },
          ),
          ListTile(
            title: const Text('Tambah Budget'),
            onTap: () {
              // Route menu ke halaman form
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyFormPage()),
              );
            },
          ),
          ListTile(
            title: const Text('Data Budget'),
            onTap: () {
              // Route menu ke halaman form
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const ShowBudget()),
              );
            },
          ),
          ListTile(
            title: const Text('My Watch List'),
            onTap: () {
              // close navigation drawer before
              Navigator.pop(context);
              // Route menu ke halaman data budget
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => const MyWatchlistPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}