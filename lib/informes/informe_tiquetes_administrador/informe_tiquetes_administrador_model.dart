import '/componentes/tabla_tiquetes_admin/tabla_tiquetes_admin_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'informe_tiquetes_administrador_widget.dart'
    show InformeTiquetesAdministradorWidget;
import 'package:flutter/material.dart';

class InformeTiquetesAdministradorModel
    extends FlutterFlowModel<InformeTiquetesAdministradorWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for tablaTiquetesAdmin component.
  late TablaTiquetesAdminModel tablaTiquetesAdminModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    tablaTiquetesAdminModel =
        createModel(context, () => TablaTiquetesAdminModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tablaTiquetesAdminModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
