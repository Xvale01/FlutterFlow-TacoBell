import '/componentes/footer_live_mas/footer_live_mas_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txt_email widget.
  FocusNode? txtEmailFocusNode;
  TextEditingController? txtEmailController;
  String? Function(BuildContext, String?)? txtEmailControllerValidator;
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
    txtEmailFocusNode?.dispose();
    txtEmailController?.dispose();

    txtpasswordFocusNode?.dispose();
    txtpasswordController?.dispose();

    footerLiveMasModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
