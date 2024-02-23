import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'modificar_usuario_widget.dart' show ModificarUsuarioWidget;
import 'package:flutter/material.dart';

class ModificarUsuarioModel extends FlutterFlowModel<ModificarUsuarioWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txt_usuario widget.
  FocusNode? txtUsuarioFocusNode;
  TextEditingController? txtUsuarioController;
  String? Function(BuildContext, String?)? txtUsuarioControllerValidator;
  // State field(s) for txt_email widget.
  FocusNode? txtEmailFocusNode;
  TextEditingController? txtEmailController;
  String? Function(BuildContext, String?)? txtEmailControllerValidator;
  // State field(s) for txt_cedula widget.
  FocusNode? txtCedulaFocusNode;
  TextEditingController? txtCedulaController;
  String? Function(BuildContext, String?)? txtCedulaControllerValidator;
  // State field(s) for txtrol widget.
  String? txtrolValue;
  FormFieldController<String>? txtrolValueController;
  // State field(s) for txtpassword widget.
  FocusNode? txtpasswordFocusNode;
  TextEditingController? txtpasswordController;
  late bool txtpasswordVisibility;
  String? Function(BuildContext, String?)? txtpasswordControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    txtpasswordVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    txtUsuarioFocusNode?.dispose();
    txtUsuarioController?.dispose();

    txtEmailFocusNode?.dispose();
    txtEmailController?.dispose();

    txtCedulaFocusNode?.dispose();
    txtCedulaController?.dispose();

    txtpasswordFocusNode?.dispose();
    txtpasswordController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
