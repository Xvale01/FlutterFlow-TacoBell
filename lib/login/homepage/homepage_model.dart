import '/componentes/footer_live_mas/footer_live_mas_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'homepage_widget.dart' show HomepageWidget;
import 'package:flutter/material.dart';

class HomepageModel extends FlutterFlowModel<HomepageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for footerLiveMas component.
  late FooterLiveMasModel footerLiveMasModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    footerLiveMasModel = createModel(context, () => FooterLiveMasModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    footerLiveMasModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
