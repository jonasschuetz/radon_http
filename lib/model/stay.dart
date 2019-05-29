import 'package:radon_http/radon_http.dart';

class Stay extends ManagedObject<_Stay> implements _Stay {}

class _Stay {
  @primaryKey
  int id;

  @Column(unique: false, nullable: true)
  String name;
  @Column(unique: false)
  DateTime startTime;
  @Column(unique: false)
  DateTime endTime;
  @Column(unique: false)
  int dose;
}