import 'package:radon_http/radon_http.dart';

class Measurement extends ManagedObject<_Measurement> implements _Measurement {}

class _Measurement{
  @primaryKey
  int id;

  @Column(unique: false, nullable: true)
  String dosimeterNumber;
  @Column(unique: false, nullable: true)
  DateTime startDate;
  @Column(unique: false, nullable: true)
  DateTime endDate;
  @Column(unique: false, nullable: false)
  String season;
  @Column(unique: false, nullable: false)
  int bq;  
}