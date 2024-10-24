import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  double result = 0;

  TextEditingController add1Controller = TextEditingController();
  TextEditingController add2Controller = TextEditingController();

  // Addition
  void performAddition() {
    setState(() {
      double firstNum = double.parse(add1Controller.text);
      double secondNum = double.parse(add2Controller.text);
      result = firstNum + secondNum;
    });
  }

  // Subtraction
  void performSubtraction() {
    setState(() {
      double firstNum = double.parse(add1Controller.text);
      double secondNum = double.parse(add2Controller.text);
      result = firstNum - secondNum;
    });
  }

  // Multiplication
  void performMultiplication() {
    setState(() {
      double firstNum = double.parse(add1Controller.text);
      double secondNum = double.parse(add2Controller.text);
      result = firstNum * secondNum;
    });
  }

  // Division
  void performDivision() {
    setState(() {
      double firstNum = double.parse(add1Controller.text);
      double secondNum = double.parse(add2Controller.text);
      result = secondNum != 0 ? firstNum / secondNum : 0;
    });
  }

  // Clear inputs and result
  void clearInputs() {
    setState(() {
      add1Controller.clear();
      add2Controller.clear();
      result = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Unit 5 Calculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: TextField(
                  controller: add1Controller,
                  decoration: const InputDecoration(labelText: "First Number"),
                  keyboardType: TextInputType.number,
                ),
              ),
              const Text(" + "),
              Expanded(
                child: TextField(
                  controller: add2Controller,
                  decoration: const InputDecoration(labelText: "Second Number"),
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(width: 10),
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: performAddition,
                tooltip: 'Add',
              ),
              const SizedBox(width: 10),
              Text('= $result'),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: TextField(
                  controller: add1Controller,
                  decoration: const InputDecoration(labelText: "First Number"),
                  keyboardType: TextInputType.number,
                ),
              ),
              const Text(" - "),
              Expanded(
                child: TextField(
                  controller: add2Controller,
                  decoration: const InputDecoration(labelText: "Second Number"),
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(width: 10),
              IconButton(
                icon: const Icon(Icons.remove),
                onPressed: performSubtraction,
                tooltip: 'Subtract',
              ),
              const SizedBox(width: 10),
              Text('= $result'),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: TextField(
                  controller: add1Controller,
                  decoration: const InputDecoration(labelText: "First Number"),
                  keyboardType: TextInputType.number,
                ),
              ),
              const Text(" × "),
              Expanded(
                child: TextField(
                  controller: add2Controller,
                  decoration: const InputDecoration(labelText: "Second Number"),
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(width: 10),
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: performMultiplication,
                tooltip: 'Multiply',
              ),
              const SizedBox(width: 10),
              Text('= $result'),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: TextField(
                  controller: add1Controller,
                  decoration: const InputDecoration(labelText: "First Number"),
                  keyboardType: TextInputType.number,
                ),
              ),
              const Text(" ÷ "),
              Expanded(
                child: TextField(
                  controller: add2Controller,
                  decoration: const InputDecoration(labelText: "Second Number"),
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(width: 10),
              IconButton(
                icon: const Icon(Icons.horizontal_rule),
                onPressed: performDivision,
                tooltip: 'Divide',
              ),
              const SizedBox(width: 10),
              Text('= $result'),
            ],
          ),

          ElevatedButton(
            onPressed: clearInputs,
            child: const Text("Clear"),
          ),
        ],
      ),
    );
  }
}
