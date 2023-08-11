// import 'package:flutter/material.dart';
//
// class GridViewPage extends StatefulWidget {
//   const GridViewPage({Key? key}) : super(key: key);
//   @override
//   _GridViewPage createState() => _GridViewPage();
// }
//
// class _GridViewPage extends State<GridViewPage> {
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       home: Scaffold(
//         body: GridView.builder(
//           itemCount: 6,
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2, //1 개의 행에 보여줄 item 개수
//             childAspectRatio: 1 / 1, //item 의 가로 1, 세로 2 의 비율
//           ),
//           itemBuilder: (BuildContext context, int index) {
//             // return Text(index.toString());
//             return Icon(
//                 // onPressed: () => Navigator.of(context)
//                 //     .push(MaterialPageRoute(builder: (context) => result_af())),
//                 icon: Image.asset(
//                   'images/Group1${index + 1}.png',
//                   width: 155,
//                   height: 137,
//                   fit: BoxFit.fill,
//                 ));
//           },
//         ),
//       ),
//     );
//   }
// }
