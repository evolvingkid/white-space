import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'white_board_provider.dart';

List<SingleChildWidget> providers() {
  return [
    ChangeNotifierProvider(create: (_) => WhiteBoardProvider()),
  ];
}
