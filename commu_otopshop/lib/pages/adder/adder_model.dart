import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'adder_widget.dart' show AdderWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdderModel extends FlutterFlowModel<AdderWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Fullname widget.
  FocusNode? fullnameFocusNode;
  TextEditingController? fullnameTextController;
  String? Function(BuildContext, String?)? fullnameTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    fullnameFocusNode?.dispose();
    fullnameTextController?.dispose();
  }
}
