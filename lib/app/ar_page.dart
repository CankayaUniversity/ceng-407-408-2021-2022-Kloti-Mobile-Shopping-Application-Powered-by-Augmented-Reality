import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:flutter/services.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

class ArPage extends StatefulWidget {
  @override
  State<ArPage> createState() => _ArPageState();
}

class _ArPageState extends State<ArPage> {
  late ArCoreController arCoreController;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    arCoreController.dispose();
  }

  void whenArCoreViewCreated(ArCoreController arCore) {
    arCoreController = arCore;
    arCoreController.onPlaneTap = controlOnPlaneTap;
  }

  void controlOnPlaneTap(List<ArCoreHitTestResult> hitsResults) {
    final hit = hitsResults.first;
    addCharacter(hit);
  }

  Future addCharacter(ArCoreHitTestResult hit) async {
    final bytes =
        (await rootBundle.load("assets/images/nike_tshirt.png")).buffer.asUint8List();

    final characterPos = ArCoreNode(
      image: ArCoreImage(bytes: bytes, width: 550, height: 550),
      position: hit.pose.translation + vector.Vector3(0.0, 0.50, 0.5),
      rotation: hit.pose.rotation + vector.Vector4(0.0, 0.0, 0.0, 0.0),
    );

    arCoreController.addArCoreNode(characterPos);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kloti AR"),
        centerTitle: true,
      ),
      body: ArCoreView(
        onArCoreViewCreated: whenArCoreViewCreated,
        enableTapRecognizer: true,
      ),
    );
  }
}
