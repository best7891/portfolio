import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'orderhistory_widget.dart' show OrderhistoryWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OrderhistoryModel extends FlutterFlowModel<OrderhistoryWidget> {
  ///  State fields for stateful widgets in this page.

  Stream<List<PaymentsRow>>? listViewSupabaseStream;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
