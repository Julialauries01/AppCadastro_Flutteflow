import '/flutter_flow/flutter_flow_util.dart';
import 'page_qtde_widget.dart' show PageQtdeWidget;
import 'package:flutter/material.dart';

class PageQtdeModel extends FlutterFlowModel<PageQtdeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
