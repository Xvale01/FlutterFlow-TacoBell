import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'crear_tiquete_widget.dart' show CrearTiqueteWidget;
import 'package:flutter/material.dart';

class CrearTiqueteModel extends FlutterFlowModel<CrearTiqueteWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txt_idtiquete widget.
  FocusNode? txtIdtiqueteFocusNode;
  TextEditingController? txtIdtiqueteController;
  String? Function(BuildContext, String?)? txtIdtiqueteControllerValidator;
  // State field(s) for txt_sucursal widget.
  FocusNode? txtSucursalFocusNode;
  TextEditingController? txtSucursalController;
  String? Function(BuildContext, String?)? txtSucursalControllerValidator;
  // State field(s) for txt_descripsoporte widget.
  FocusNode? txtDescripsoporteFocusNode;
  TextEditingController? txtDescripsoporteController;
  String? Function(BuildContext, String?)? txtDescripsoporteControllerValidator;
  // State field(s) for txtusuarioasignado widget.
  String? txtusuarioasignadoValue;
  FormFieldController<String>? txtusuarioasignadoValueController;
  // State field(s) for txt_fecha widget.
  FocusNode? txtFechaFocusNode;
  TextEditingController? txtFechaController;
  String? Function(BuildContext, String?)? txtFechaControllerValidator;
  // State field(s) for txt_estadotiquete widget.
  FocusNode? txtEstadotiqueteFocusNode;
  TextEditingController? txtEstadotiqueteController;
  String? Function(BuildContext, String?)? txtEstadotiqueteControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txtIdtiqueteFocusNode?.dispose();
    txtIdtiqueteController?.dispose();

    txtSucursalFocusNode?.dispose();
    txtSucursalController?.dispose();

    txtDescripsoporteFocusNode?.dispose();
    txtDescripsoporteController?.dispose();

    txtFechaFocusNode?.dispose();
    txtFechaController?.dispose();

    txtEstadotiqueteFocusNode?.dispose();
    txtEstadotiqueteController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
