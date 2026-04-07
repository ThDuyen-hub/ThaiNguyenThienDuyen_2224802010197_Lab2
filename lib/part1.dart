import 'package:flutter/material.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: LayoutApp(),
      ),
    );
  }
}

class LayoutApp extends StatelessWidget {
  const LayoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // Sắp xếp các con theo chiều dọc và căn giữa [cite: 7, 10]
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('I\'m in a Column and Centered. The below is a row.'),
        const SizedBox(height: 20), // Tạo khoảng cách 20px [cite: 19, 20]
        Row(
          // Sắp xếp các con theo chiều ngang, cách đều nhau [cite: 11, 12]
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            for (var color in [Colors.red, Colors.green, Colors.blue])
              Container(
                width: 100,
                height: 100,
                color: color,
              ), // Container đóng vai trò là hộp màu [cite: 15, 17]
          ],
        ),
        const SizedBox(height: 20),
        Stack(
          // Cho phép các widget đè lên nhau [cite: 13]
          alignment: Alignment.center,
          children: [
            Container(
              width: 300,
              height: 200,
              color: Colors.yellow,
            ),
            const Text(
              'Stacked on Yellow Box',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}