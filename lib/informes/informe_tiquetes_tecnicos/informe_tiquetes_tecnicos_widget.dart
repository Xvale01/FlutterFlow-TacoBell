import '/componentes/tabla_tiquetes_tecnico/tabla_tiquetes_tecnico_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'informe_tiquetes_tecnicos_model.dart';
export 'informe_tiquetes_tecnicos_model.dart';

class InformeTiquetesTecnicosWidget extends StatefulWidget {
  const InformeTiquetesTecnicosWidget({super.key});

  @override
  State<InformeTiquetesTecnicosWidget> createState() =>
      _InformeTiquetesTecnicosWidgetState();
}

class _InformeTiquetesTecnicosWidgetState
    extends State<InformeTiquetesTecnicosWidget> {
  late InformeTiquetesTecnicosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InformeTiquetesTecnicosModel());
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
          leading: Icon(
            Icons.arrow_back_sharp,
            color: FlutterFlowTheme.of(context).primaryBackground,
            size: 35.0,
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
                model: _model.tablaTiquetesTecnicoModel,
                updateCallback: () => setState(() {}),
                child: const TablaTiquetesTecnicoWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
