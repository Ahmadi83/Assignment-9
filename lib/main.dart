import 'package:flutter/material.dart';

void main() => runApp(Calculator());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Calculator(),
//       ),
//     );
//   }
// }
strin a ='commit';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  TextEditingController controler = TextEditingController();
  TextEditingController controler1 = TextEditingController();
  String result = '';

  void calculatesum() {
    int a = int.parse(controler1.text);
    int b =int.parse(controler.text);
    int c =a+b;
    setState(() {
      result = "$c";
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(backgroundColor: Colors.red,),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Calculator Application", style: TextStyle(fontSize: 30,
                        fontWeight: FontWeight.bold, color: Colors.blue),)
                  ],),

                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Expanded(child: TextField(controller: controler1,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: "Enter a Number", border: OutlineInputBorder()
                    ),
                  )),
                ),
                Padding(padding: const EdgeInsets.only(
                    left: 30, right: 30, top: 0, bottom: 10),
                  child: Expanded(child: TextField(controller: controler,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(hintText: "Enter a Number",
                        border: OutlineInputBorder()),
                  )),),

                Padding(padding: EdgeInsets.only(left: 30, right: 30),
                  child: ElevatedButton(onPressed: (){
                   calculatesum();
                  },
                    child: Text('sum of numbers'),
                  ),),

                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Result:",
                      style: TextStyle(fontSize: 30, color: Colors.red),),
                    Text(result, style: TextStyle(fontSize: 50,
                        color: Colors.green,
                        fontWeight: FontWeight.bold),)
                  ],)

              ],
            ),
          ),
        ),
      ),
    );
  }
}

