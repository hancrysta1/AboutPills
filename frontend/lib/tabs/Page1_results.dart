// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../providers/results_provider.dart';
// import '../widgets/results_list.dart';
//
// class SearchResults extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//               providers: [
//                 ChangeNotifierProvider(
//                 create: (BuildContext context) => ResultsProvider()),
//                 ],
//                 child:Container(
//                   child:
//                     Consumer<ResultsProvider>(
//                           builder: (context, value, child) =>
//                               ResultsList(results: value.allResults)),
//
//                 ),
//         );
//   }
//
// }
