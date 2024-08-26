import 'package:flutter/material.dart';

class ScaffoldWudgete extends StatefulWidget {
  const ScaffoldWudgete({super.key});

  @override
  State<ScaffoldWudgete> createState() {
    return _ScaffoldWudgetState();
  }
}

class _ScaffoldWudgetState extends State<ScaffoldWudgete> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const boarder = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black,
        width: 2.0,
      ),
      borderRadius: BorderRadius.all(Radius.circular(50)),
    );
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Currency Converter',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              " INR ${result.toStringAsFixed(2)}",
              style: const TextStyle(
                fontSize: 55,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                decoration: const InputDecoration(
                  hintText: "Please enter the amount in USD ",
                  hintStyle: TextStyle(
                    color: Color.fromARGB(153, 0, 0, 0),
                  ),
                  prefixIcon: Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Color.fromARGB(153, 0, 0, 0),
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: boarder,
                  enabledBorder: boarder,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text) * 84.10;
                  });
                },
                style: const ButtonStyle(
                  elevation: WidgetStatePropertyAll(5),
                  backgroundColor: WidgetStatePropertyAll(Colors.black),
                  foregroundColor: WidgetStatePropertyAll(Colors.white),
                  minimumSize:
                      WidgetStatePropertyAll(Size(double.infinity, 50)),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                  ),
                ),
                child: const Text(
                  "Convert",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// class ScaffoldWidget extends StatelessWidget {
//   // ignore: non_constant_identifier_names
//   const ScaffoldWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     double result = 0;
//     final TextEditingController textEditingController = TextEditingController();
//     const boarder = OutlineInputBorder(
//       borderSide: BorderSide(
//         color: Colors.black,
//         width: 2.0,
//       ),
//       borderRadius: BorderRadius.all(Radius.circular(50)),
//     );
//     return Scaffold(
//       backgroundColor: Colors.amber,
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         title: const Text(
//           'Currency Converter',
//           style: TextStyle(color: Colors.white),
//         ),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           //crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text(
//               result.toString(),
//               style: const TextStyle(
//                 fontSize: 55,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const Padding(
//               padding: EdgeInsets.all(8.0),
//               child: TextField(
//                 style: TextStyle(
//                   fontSize: 18,
//                   color: Color.fromARGB(255, 0, 0, 0),
//                 ),
//                 decoration: InputDecoration(
//                   hintText: "Please enter the amount in USD ",
//                   hintStyle: TextStyle(
//                     color: Color.fromARGB(153, 0, 0, 0),
//                   ),
//                   prefixIcon: Icon(Icons.monetization_on_outlined),
//                   prefixIconColor: Color.fromARGB(153, 0, 0, 0),
//                   filled: true,
//                   fillColor: Colors.white,
//                   focusedBorder: boarder,
//                   enabledBorder: boarder,
//                 ),
//                 keyboardType: TextInputType.numberWithOptions(
//                   decimal: true,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: ElevatedButton(
//                 onPressed: () {
//                   result = double.parse(textEditingController.text) * 81;
//                 },
//                 style: const ButtonStyle(
//                   elevation: WidgetStatePropertyAll(5),
//                   backgroundColor: WidgetStatePropertyAll(Colors.black),
//                   foregroundColor: WidgetStatePropertyAll(Colors.white),
//                   minimumSize:
//                       WidgetStatePropertyAll(Size(double.infinity, 50)),
//                   shape: WidgetStatePropertyAll(
//                     RoundedRectangleBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(50)),
//                     ),
//                   ),
//                 ),
//                 child: const Text(
//                   "Convert",
//                   style: TextStyle(
//                     fontSize: 25,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
