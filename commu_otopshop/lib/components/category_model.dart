import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'category_widget.dart' show CategoryWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CategoryModel extends FlutterFlowModel<CategoryWidget> {
  ///  State fields for stateful widgets in this component.

  Stream<List<CategoriesRow>>? listViewSupabaseStream;
  // Stores action output result for [Backend Call - Query Rows] action in Container widget.
  List<CategoriesRow>? best;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
