import 'package:radon_http/radon_http.dart';



class Stay extends ManagedObject<_Stay> implements _Stay {

}

class _Stay {



  @Column(primaryKey: true, autoincrement: true)
  int id;
  
  @Column(unique: false, nullable: true)
  DateTime startTime;
  @Column(unique: false, nullable: true)
  DateTime endTime;
  @Column(unique: false, nullable: true)
  int dose;

}