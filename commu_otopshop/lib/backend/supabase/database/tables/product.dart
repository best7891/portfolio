import '../database.dart';

class ProductTable extends SupabaseTable<ProductRow> {
  @override
  String get tableName => 'Product';

  @override
  ProductRow createRow(Map<String, dynamic> data) => ProductRow(data);
}

class ProductRow extends SupabaseDataRow {
  ProductRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get productName => getField<String>('Product_name');
  set productName(String? value) => setField<String>('Product_name', value);

  int? get stockQuantity => getField<int>('stock_quantity');
  set stockQuantity(int? value) => setField<int>('stock_quantity', value);

  int? get lowStockThreshold => getField<int>('low_stock_threshold');
  set lowStockThreshold(int? value) =>
      setField<int>('low_stock_threshold', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  double? get price => getField<double>('price');
  set price(double? value) => setField<double>('price', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);

  int? get categoriesId => getField<int>('categories_id');
  set categoriesId(int? value) => setField<int>('categories_id', value);
}
