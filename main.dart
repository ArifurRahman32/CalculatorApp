import 'package:flutter/material.dart';
import 'package:sumapp/style.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Map <String, double> TextMap ={
    "FirstField":0,
    "SecondField":0,
  };
  double SUM = 0;

  @override
  Widget build(BuildContext context) {

    InputChange (key, inputValue){
      setState(() {
        TextMap.update(key, (value) => double.parse(inputValue));
      });
    }

result(){
      setState(() {
        SUM = TextMap['FirstField']! + TextMap['SecondField']!;
      });
}




    return Scaffold(
      appBar: AppBar(
        title: Text('SumApp'),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Result= $SUM',
              style: ResultTextStyle(),
            ),

            SizedBox(height: 20,),

            TextField(
              onChanged: (value){
                InputChange("FirstField",value);
              },
                decoration: InputBoxStyle('First Number'),
            ),

            SizedBox(height: 20,),

            TextField(
              onChanged: (value){
                InputChange("SecondField",value);
              },
              decoration: InputBoxStyle('Second Number'),
            ),

            SizedBox(
              height: 20,
            ),

            Container(
              width: double.infinity,
              child: ElevatedButton(
                  style: AppButtonStyle(),
                  onPressed: (){
                    result();
                  },
                  child: Text('Show Sum Result')
              ),
            )
          ],
        ),
      ),

    );;
  }
}


