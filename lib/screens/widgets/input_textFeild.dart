import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whiteboard/core/global/hints.dart';
import 'package:whiteboard/core/providers/white_board_provider.dart';

class InputTextFeild extends StatelessWidget {
  void _onChange(String _val, {@required BuildContext context}) {
    final _whiteProvider =
        Provider.of<WhiteBoardProvider>(context, listen: false);
    _whiteProvider.onTextEdit(_val);
  }

  void _onSubmit(String _val, {@required BuildContext context}) {
    FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: TextField(
        autofillHints: hints,
        autocorrect: true,
        autofocus: true,
        decoration: InputDecoration(hintText: "Type Anything"),
        onChanged: (_val) => _onChange(_val, context: context),
        onSubmitted: (_val) => _onSubmit(_val, context: context),
      ),
    );
  }
}
