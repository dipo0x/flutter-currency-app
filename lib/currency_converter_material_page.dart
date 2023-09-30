import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage ({ super.key });

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '0', 
              style: TextStyle(
                fontSize: 55,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255)
              )
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                style: const TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255)
                ),
                decoration: InputDecoration(
                  hintText: 'Please enter the amount in USD',
                  hintStyle: const TextStyle(
                    color: Color.fromARGB(153, 0, 0, 0)
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
                if(kDebugMode){
                  print("button clicked");
                }    
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