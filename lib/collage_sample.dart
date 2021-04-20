import 'package:flutter/material.dart';
import 'package:image_collage_widget/image_collage_widget.dart';
import 'package:image_collage_widget/utils/CollageType.dart';

class CollageSample extends StatefulWidget {
  final CollageType type;
  CollageSample({this.type});
  @override
  _CollageSampleState createState() => _CollageSampleState();
}

class _CollageSampleState extends State<CollageSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: ImageCollageWidget(
          collageType: widget.type,
          withImage: true,
        ),
      ),
    );
  }
}
