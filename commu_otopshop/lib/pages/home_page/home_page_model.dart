import '/backend/supabase/supabase.dart';
import '/components/category_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  List<ProductRow> srach = [];
  void addToSrach(ProductRow item) => srach.add(item);
  void removeFromSrach(ProductRow item) => srach.remove(item);
  void removeAtIndexFromSrach(int index) => srach.removeAt(index);
  void insertAtIndexInSrach(int index, ProductRow item) =>
      srach.insert(index, item);
  void updateSrachAtIndex(int index, Function(ProductRow) updateFn) =>
      srach[index] = updateFn(srach[index]);

  List<CategoriesRow> srachcategory = [];
  void addToSrachcategory(CategoriesRow item) => srachcategory.add(item);
  void removeFromSrachcategory(CategoriesRow item) =>
      srachcategory.remove(item);
  void removeAtIndexFromSrachcategory(int index) =>
      srachcategory.removeAt(index);
  void insertAtIndexInSrachcategory(int index, CategoriesRow item) =>
      srachcategory.insert(index, item);
  void updateSrachcategoryAtIndex(
          int index, Function(CategoriesRow) updateFn) =>
      srachcategory[index] = updateFn(srachcategory[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in HomePage widget.
  List<ProductRow>? showproducts;
  // State field(s) for textSearch widget.
  FocusNode? textSearchFocusNode;
  TextEditingController? textSearchTextController;
  String? Function(BuildContext, String?)? textSearchTextControllerValidator;
  // Stores action output result for [Backend Call - Query Rows] action in textSearch widget.
  List<ProductRow>? products;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<ProductRow>? allProducts;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textSearchFocusNode?.dispose();
    textSearchTextController?.dispose();
  }
}
