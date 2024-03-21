import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'cerrar_tiquete_tecnico_widget.dart' show CerrarTiqueteTecnicoWidget;
import 'package:flutter/material.dart';

class CerrarTiqueteTecnicoModel
    extends FlutterFlowModel<CerrarTiqueteTecnicoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TicketIDSelection widget.
  int? ticketIDSelectionValue;
  FormFieldController<int>? ticketIDSelectionValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in TicketIDSelection widget.
  TicketsRecord? varTicketSelected;
  // Stores action output result for [Firestore Query - Query a collection] action in TicketIDSelection widget.
  ClientesRecord? varClientTicketSelected;
  // Stores action output result for [Firestore Query - Query a collection] action in TicketIDSelection widget.
  SucursalRecord? varSucursalTicket;
  // State field(s) for TickeStatusSelection widget.
  String? tickeStatusSelectionValue;
  FormFieldController<String>? tickeStatusSelectionValueController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
