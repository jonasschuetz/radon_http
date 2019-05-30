import 'package:radon_http/radon_http.dart';

class Stay extends ManagedObject<_Stay> implements _Stay {

  _Stay create(Map<String, String> json) {
    final stay =  _Stay.fromJson(json);
    return stay;
  }
}

class _Stay {


  _Stay.fromJson(Map<String, String> json)
      : id = int.parse(json['id']),
        startTime = DateTime.parse(json['startTime']),
        endTime = DateTime.parse(json['endTime']),
        dose = int.parse(json['dose']);

  @primaryKey
  int id;
  @Column(unique: false, nullable: false)
  DateTime startTime;
  @Column(unique: false, nullable: false)
  DateTime endTime;
  @Column(unique: false, nullable: false)
  int dose;


}