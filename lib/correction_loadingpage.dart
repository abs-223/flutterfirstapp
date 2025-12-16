import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class CorrectionLoadingpage extends StatefulWidget {
  const CorrectionLoadingpage({super.key});

  @override
  State<CorrectionLoadingpage> createState() => _CorrectionLoadingpageState();
}

class _CorrectionLoadingpageState extends State<CorrectionLoadingpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: LoadingIndicator(
                  indicatorType: Indicator.ballGridBeat,
                  colors: [Colors.blue,Colors.purple,Colors.red],
                  strokeWidth: 4.0,
                  pathBackgroundColor:Colors.black45,
                ),),
    );
  }
}