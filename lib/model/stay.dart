import 'package:radon_http/radon_http.dart';

class Stay extends ManagedObject<_Stay> implements _Stay {}

class _Stay {
  @primaryKey
  int S_id;

  @Column(unique: false)
  String name;
  @Column(unique: false)
  DateTime starttime;
  @Column(unique: false)
  DateTime endtime;
  @Column(unique: false)
  int dose;
}