import '/componentes/tabla_tiquetes_tecnico/tabla_tiquetes_tecnico_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'informe_tiquetes_tecnicos_widget.dart'
    show InformeTiquetesTecnicosWidget;
import 'package:flutter/material.dart';

class InformeTiquetesTecnicosModel
    extends FlutterFlowModel<InformeTiquetesTecnicosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for tablaTiquetesTecnico component.
  late TablaTiquetesTecnicoModel tablaTiquetesTecnicoModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    tablaTiquetesTecnicoModel =
        createModel(context, () => TablaTiquetesTecnicoModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tablaTiquetesTecnicoModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
