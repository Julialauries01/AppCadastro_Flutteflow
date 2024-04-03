import '/flutter_flow/flutter_flow_util.dart';
import 'comp_cadastro_widget.dart' show CompCadastroWidget;
import 'package:flutter/material.dart';

class CompCadastroModel extends FlutterFlowModel<CompCadastroWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for addProduto widget.
  FocusNode? addProdutoFocusNode1;
  TextEditingController? addProdutoController1;
  String? Function(BuildContext, String?)? addProdutoController1Validator;
  String? _addProdutoController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Preencha o campo';
    }

    return null;
  }

  // State field(s) for addProduto widget.
  FocusNode? addProdutoFocusNode2;
  TextEditingController? addProdutoController2;
  String? Function(BuildContext, String?)? addProdutoController2Validator;
  String? _addProdutoController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Preencha o campo';
    }

    return null;
  }

  // State field(s) for addProduto widget.
  FocusNode? addProdutoFocusNode3;
  TextEditingController? addProdutoController3;
  String? Function(BuildContext, String?)? addProdutoController3Validator;
  String? _addProdutoController3Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Preencha o campo';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    addProdutoController1Validator = _addProdutoController1Validator;
    addProdutoController2Validator = _addProdutoController2Validator;
    addProdutoController3Validator = _addProdutoController3Validator;
  }

  @override
  void dispose() {
    addProdutoFocusNode1?.dispose();
    addProdutoController1?.dispose();

    addProdutoFocusNode2?.dispose();
    addProdutoController2?.dispose();

    addProdutoFocusNode3?.dispose();
    addProdutoController3?.dispose();
  }
}
