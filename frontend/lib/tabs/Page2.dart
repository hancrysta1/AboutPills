import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/likes_provider.dart';
import '../widgets/like_list.dart';
import '../widgets/results_list.dart';

class LikeResults extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (BuildContext context) => LikesProvider()),
      ],
      child:Expanded(
        child:
          Consumer<LikesProvider>(
              builder: (context, value, child) =>
                  LikeList(results: value.allResults)),

      ),
    );

    //   Container(
    //   child: Consumer<LikesProvider>(
    //       builder: (context, value, child) =>
    //           LikeList(results: value.allResults)),
    // );
  }


}
