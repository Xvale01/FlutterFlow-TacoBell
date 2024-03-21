import '/componentes/footer_live_mas/footer_live_mas_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'crear_usuario_widget.dart' show CrearUsuarioWidget;
import 'package:flutter/material.dart';

class CrearUsuarioModel extends FlutterFlowModel<CrearUsuarioWidget> {
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
  // Model for footerLiveMas component.
  late FooterLiveMasModel footerLiveMasModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    txtpasswordVisibility = false;
    footerLiveMasModel = createModel(context, () => FooterLiveMasModel());
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

    footerLiveMasModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
