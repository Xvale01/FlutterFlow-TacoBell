import '/componentes/tabla_usuarios/tabla_usuarios_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'informe_usuarios_widget.dart' show InformeUsuariosWidget;
import 'package:flutter/material.dart';

class InformeUsuariosModel extends FlutterFlowModel<InformeUsuariosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for tablaUsuarios component.
  late TablaUsuariosModel tablaUsuariosModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    tablaUsuariosModel = createModel(context, () => TablaUsuariosModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tablaUsuariosModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
