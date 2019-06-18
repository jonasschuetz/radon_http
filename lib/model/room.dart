import 'package:radon_http/radon_http.dart';



class Room extends ManagedObject<_Room> implements _Room {}

class _Room{
  @primaryKey
  int id;

  @Column(unique: false, nullable: false)
  String name;
  @Column(unique: false, nullable: false)
  int averageBq;
}