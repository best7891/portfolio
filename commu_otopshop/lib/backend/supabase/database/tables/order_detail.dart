import '../database.dart';

class OrderDetailTable extends SupabaseTable<OrderDetailRow> {
  @override
  String get tableName => 'Order_Detail';

  @override
  OrderDetailRow createRow(Map<String, dynamic> data) => OrderDetailRow(data);
}

class OrderDetailRow extends SupabaseDataRow {
  OrderDetailRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OrderDetailTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get orderId => getField<String>('order_id')!;
  set orderId(String value) => setField<String>('order_id', value);

  String? get productId => getField<String>('product_id');
  set productId(String? value) => setField<String>('product_id', value);

  int? get quantity => getField<int>('quantity');
  set quantity(int? value) => setField<int>('quantity', value);

  double? get price => getField<double>('price');
  set price(double? value) => setField<double>('price', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);
}
