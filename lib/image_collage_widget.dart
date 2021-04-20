import 'package:flutter/material.dart';
import 'package:image_collage_widget/utils/CollageType.dart';
import 'package:sample_collage_maker/collage_sample.dart';

class ImageCollageSample extends StatefulWidget {
  @override
  _ImageCollageSampleState createState() => _ImageCollageSampleState();
}

class _ImageCollageSampleState extends State<ImageCollageSample> {
  var color = Colors.white;
  pushImageWidget(CollageType type) async {
    await Navigator.of(context).push(
      new MaterialPageRoute(
        builder: (context) => CollageSample(type: type),
      ),
    );
  }

  RoundedRectangleBorder buttonShape() {
    return RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(10.0));
  }

  Widget buildRaisedButton(CollageType collageType, String text) {
    return RaisedButton(
      onPressed: () => pushImageWidget(collageType),
      shape: buttonShape(),
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(text),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Image Collage Widget'),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: ListView(
            padding: EdgeInsets.all(16.0),
            shrinkWrap: true,
            children: <Widget>[
              buildRaisedButton(CollageType.VSplit, 'Vsplit'),
              buildRaisedButton(CollageType.HSplit, 'HSplit'),
              buildRaisedButton(CollageType.FourSquare, 'FourSquare'),
              buildRaisedButton(CollageType.NineSquare, 'NineSquare'),
              buildRaisedButton(CollageType.ThreeVertical, 'ThreeVertical'),
              buildRaisedButton(CollageType.ThreeHorizontal, 'ThreeHorizontal'),
              buildRaisedButton(CollageType.LeftBig, 'LeftBig'),
              buildRaisedButton(CollageType.RightBig, 'RightBig'),
              buildRaisedButton(CollageType.FourLeftBig, 'FourLeftBig'),
              buildRaisedButton(CollageType.VMiddleTwo, 'VMiddleTwo'),
              buildRaisedButton(CollageType.CenterBig, 'CenterBig'),
            ],
          ),
        ),
      ),
    );
  }
}
