import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whiteboard/core/providers/white_board_provider.dart';

class Display extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Consumer<WhiteBoardProvider>(
        builder: (ctx, _whiteBoardProvider, _) {
          // * for handling null
          String _displayData = _whiteBoardProvider.textData == null
              ? ''
              : _whiteBoardProvider.textData;
          // * display widgets
          return Container(
            width: double.infinity,
            child: FittedBox(fit: BoxFit.fitWidth, child: Text(_displayData)),
          );
        },
      ),
    );
  }
}
