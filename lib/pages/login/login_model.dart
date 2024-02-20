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

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    txtpasswordVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    txtEmailFocusNode?.dispose();
    txtEmailController?.dispose();

    txtpasswordFocusNode?.dispose();
    txtpasswordController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
