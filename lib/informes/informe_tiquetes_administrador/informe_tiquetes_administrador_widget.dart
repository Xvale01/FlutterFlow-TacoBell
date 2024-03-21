import '/componentes/tabla_tiquetes_admin/tabla_tiquetes_admin_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'informe_tiquetes_administrador_model.dart';
export 'informe_tiquetes_administrador_model.dart';

class InformeTiquetesAdministradorWidget extends StatefulWidget {
  const InformeTiquetesAdministradorWidget({super.key});

  @override
  State<InformeTiquetesAdministradorWidget> createState() =>
      _InformeTiquetesAdministradorWidgetState();
}

class _InformeTiquetesAdministradorWidgetState
    extends State<InformeTiquetesAdministradorWidget> {
  late InformeTiquetesAdministradorModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InformeTiquetesAdministradorModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: const Color(0xFF43058C),
          automaticallyImplyLeading: false,
          leading: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.pushNamed('MenuTiquetes');
            },
            child: Icon(
              Icons.arrow_back_sharp,
              color: FlutterFlowTheme.of(context).primaryBackground,
              size: 35.0,
            ),
          ),
          title: Text(
            'Informe de tiquetes',
            style: FlutterFlowTheme.of(context).displayLarge,
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              wrapWithModel(
                model: _model.tablaTiquetesAdminModel,
                updateCallback: () => setState(() {}),
                child: const TablaTiquetesAdminWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
