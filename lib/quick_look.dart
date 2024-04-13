import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class QuikLook extends StatelessWidget {
  final String filePath;

  const QuikLook({
    Key? key,
    required this.filePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // This is used in the platform side to register the view.
    const String viewType = 'QuickLook';
    // Pass parameters to the platform side.
    final Map<String, dynamic> creationParams = {'filePath': filePath};

    return UiKitView(
      viewType: viewType,
      layoutDirection: TextDirection.ltr,
      creationParams: creationParams,
      creationParamsCodec: const StandardMessageCodec(),
    );
  }
}
