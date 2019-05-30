import 'package:radon_http/radon_http.dart';

class Stay extends ManagedObject<_Stay> implements _Stay {}

class _Stay {


  @primaryKey
  int id;
  @Column(unique: false, nullable: false)
  DateTime startTime;
  @Column(unique: false, nullable: false)
  DateTime endTime;
  @Column(unique: false, nullable: false)
  int dose;

}