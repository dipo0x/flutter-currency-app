import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurrencyConverterCupertionPage extends StatefulWidget {
  const CurrencyConverterCupertionPage({super.key});

  @override
  State<CurrencyConverterCupertionPage> createState() => _CurrencyConverterCupertinoPageState();
}

class _CurrencyConverterCupertinoPageState extends State<CurrencyConverterCupertionPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  void convert () {
    result  = double.parse(textEditingController.text * 80);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // final border = OutlineInputBorder(
    //   borderSide: const BorderSide(
    //     width: 2.0,
    //     style: BorderStyle.solid,
    // ),
    //   borderRadius: BorderRadius.circular(10)
    // );

    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGrey3,
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: Colors.blueGrey,
        middle: Text("Currency converter"),
      ),
      child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  'N ${result!=0 ? result.toStringAsFixed(2): result.toStringAsFixed(0)}',
                  style: const TextStyle(
                      fontSize: 55,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255)
                  )
              ),
              CupertinoTextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: CupertinoColors.black 
                ),
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5),
                ),
                  keyboardType: const TextInputType.numberWithOptions(
                      decimal: true
                  ),
                ),

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