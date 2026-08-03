import '../database.dart';

class OrdersTable extends SupabaseTable<OrdersRow> {
  @override
  String get tableName => 'Orders';

  @override
  OrdersRow createRow(Map<String, dynamic> data) => OrdersRow(data);
}

class OrdersRow extends SupabaseDataRow {
  OrdersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OrdersTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  double? get totalPrice => getField<double>('total_price');
  set totalPrice(double? value) => setField<double>('total_price', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get slipUrl => getField<String>('slip_url');
  set slipUrl(String? value) => setField<String>('slip_url', value);

  String? get trackingNo => getField<String>('tracking_no');
  set trackingNo(String? value) => setField<String>('tracking_no', value);

  String? get address => getField<String>('address');
  set address(String? value) => setField<String>('address', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
