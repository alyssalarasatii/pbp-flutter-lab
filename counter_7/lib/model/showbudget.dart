import 'package:flutter/material.dart';
import 'package:counter_7/model/budget.dart';
import 'package:counter_7/utils/drawer.dart';

class ShowBudget extends StatefulWidget {
  const ShowBudget({super.key});

  @override
  State<ShowBudget> createState() => _ShowBudgetState();
}

class _ShowBudgetState extends State<ShowBudget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Form Budget'),
        ),
        drawer: Drawerz(),
        body: SingleChildScrollView(
            child: Container(
                padding:
                const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Column(
                    children: ListBudget.data
                        .map((budget) => Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(.15),
                            blurRadius: 20.0, 
                            spreadRadius: 0.0, 
                            offset: const Offset(
                              1.0, 
                              1.0, 
                            ),
                          )
                        ],
                      ),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: SizedBox(
                          height: 100,
                          child: Container(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                children: [
                                  Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment
                                          .spaceBetween,
                                      children: [
                                        Text(
                                          budget.judul,
                                          style: const TextStyle(
                                              fontWeight:
                                              FontWeight.w600,
                                              fontSize: 18),
                                        ),
                                      ]),
                                  const Spacer(),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment
                                        .spaceBetween,
                                    children: [
                                      Text(budget.nominal
                                          .toString()),
                                      Text(budget.jenis)
                                    ],
                                  )
                                ],
                              )),
                        ),
                      ),
                    ))
                        .toList()
                ))));
  }
}