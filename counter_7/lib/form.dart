import 'package:flutter/material.dart';
import 'package:counter_7/drawer.dart';
import 'package:counter_7/budget.dart';

class MyFormPage extends StatefulWidget {
  const MyFormPage({super.key});

  @override
  State<MyFormPage> createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _title = "";
  int? _quantity = 0;
  String? _type;
  DateTime? _dateTime;
  final _Titlecontroller = TextEditingController();
  final _Quantitycontroller = TextEditingController();

  void clearText() {
    _Titlecontroller.clear();
    _Quantitycontroller.clear();

    setState(() {
      _type = null;
      _dateTime = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Budget'),
      ),
      drawer: buildDrawer(context),
      body: Form(
          key: _formKey,
          child: Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: "Contoh: Beli Tiket Konser",
                                labelText: "Judul",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                              controller: _Titlecontroller,
                              onChanged: (String? value) {
                                setState(() {
                                  _title = value!;
                                });
                              },
                              onSaved: (String? value) {
                                setState(() {
                                  _title = value!;
                                });
                              },
                              // Untuk situasi apabila judulnya kosong
                              validator: (String? value) {
                                if (value == null || value.isEmpty) {
                                  return 'Judul tidak boleh kosong!';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(
                              height: 10, 
                            ),
                            TextFormField(
                              controller: _Quantitycontroller,
                              decoration: InputDecoration(
                                hintText: "Contoh: 50505",
                                labelText: "Nominal",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                              onChanged: (String? value) {
                                setState(() {
                                  _quantity = int.tryParse(value!);
                                });
                              },
                              onSaved: (String? value) {
                                setState(() {
                                  _quantity = int.parse(value!);
                                });
                              },
                              // Untuk situasi dimana nominalnya kosong
                              validator: (String? value) {
                                if (value == null || value.isEmpty) {
                                  return 'Nominal tidak boleh kosong!';
                                } else if (_quantity == null) {
                                  return 'Nominal harus angka!';
                                }
                                return null;
                              },
                            )
                          ])),
                  const SizedBox(
                    height: 10, 
                  ),

                  SizedBox(
                    width: 120,
                    child: DropdownButtonFormField(
                      decoration: const InputDecoration(
                        // isCollapsed: true,
                        enabledBorder: InputBorder.none,
                      ),
                      hint: const Text("Pilih Jenis"),
                      value: _type,
                      validator: (value) =>
                      value == null ? "Pilih Jenis" : null,
                      items: const <DropdownMenuItem<String>>[
                        DropdownMenuItem<String>(
                          value: 'Pengeluaran',
                          child: Text('Pengeluaran'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Pemasukan',
                          child: Text('Pemasukan'),
                        ),
                      ],
                      onChanged: (String? value) {
                        setState(() {
                          _type = value!;
                        });
                      },
                    ), 
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  const Spacer(),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          ListBudget.data.add(
                              Budget(_title, _quantity, _type!));

                          clearText();
                        }
                      },
                      child: const Text(
                        "Simpan",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ))),
    );
  }
}