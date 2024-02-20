import '/flutter_flow/flutter_flow_util.dart';
import 'consultar_tiquete_administrador_widget.dart'
    show ConsultarTiqueteAdministradorWidget;
import 'package:flutter/material.dart';

class ConsultarTiqueteAdministradorModel
    extends FlutterFlowModel<ConsultarTiqueteAdministradorWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txt_idtiquete widget.
  FocusNode? txtIdtiqueteFocusNode;
  TextEditingController? txtIdtiqueteController;
  String? Function(BuildContext, String?)? txtIdtiqueteControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txtIdtiqueteFocusNode?.dispose();
    txtIdtiqueteController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
