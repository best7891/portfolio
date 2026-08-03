import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'busjop_widget.dart' show BusjopWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BusjopModel extends FlutterFlowModel<BusjopWidget> {
  ///  State fields for stateful widgets in this page.

  Stream<List<OrdersRow>>? listViewSupabaseStream;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
