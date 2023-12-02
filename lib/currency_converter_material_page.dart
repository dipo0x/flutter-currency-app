import 'package:flutter/material.dart';

//
//
//
class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() =>
     _CurrencyConverterMaterialPageState();
  }

class _CurrencyConverterMaterialPageState
    extends State <CurrencyConverterMaterialPage> {
  double result= 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
    Widget build(BuildContext context) {
      final border = OutlineInputBorder(
          borderSide: const BorderSide(
            width: 2.0,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(
              10
          )
      );

      return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text("Currency converter"),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
          elevation: 0,
          // actions: [
          //   Text("My app")
          // ],
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    result.toString(),
                    style: const TextStyle(
                        fontSize: 55,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 255, 255)
                    )
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    controller: textEditingController,
                    style: const TextStyle(
                        color: Color.fromARGB(153, 0, 0, 0)
                    ),
                    decoration: InputDecoration(
                        hintText: 'Please enter the amount in USD',
                        hintStyle: const TextStyle(
                            color: Color.fromARGB(153, 47, 2, 2)
                        ),
                        prefixIcon: const Icon(Icons.monetization_on),
                        filled: true,
                        prefixIconColor: const Color.fromARGB(153, 0, 0, 0),
                        fillColor: Colors.white,
                        focusedBorder: border,
                        enabledBorder: border
                    ),
                    keyboardType: const TextInputType.numberWithOptions(
                        decimal: true
                    ),
                  ),
                ) ,

                ///button
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextButton(onPressed: (){               
                    setState(() { 
                      result = double.parse(textEditingController.text) * 50;
                    });
                  },
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        minimumSize: const Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                    child: const Text('Convert'),
                  ),
                ),
              ],
            )
        ),
      );
    }
  }
