import '../database.dart';

class PaymentsTable extends SupabaseTable<PaymentsRow> {
  @override
  String get tableName => 'Payments';

  @override
  PaymentsRow createRow(Map<String, dynamic> data) => PaymentsRow(data);
}

class PaymentsRow extends SupabaseDataRow {
  PaymentsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PaymentsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get orderId => getField<String>('order_id')!;
  set orderId(String value) => setField<String>('order_id', value);

  int? get paymentMethod => getField<int>('payment_method');
  set paymentMethod(int? value) => setField<int>('payment_method', value);

  String? get amount => getField<String>('amount');
  set amount(String? value) => setField<String>('amount', value);

  String? get slipUrl => getField<String>('slip_url');
  set slipUrl(String? value) => setField<String>('slip_url', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
