import 'package:radon_http/model/room.dart';
import 'package:radon_http/radon_http.dart';

class RoomController extends ResourceController{
  RoomController(this.context);

  final ManagedContext context;

  @Operation.get()
  Future<Response> getAllRooms() async{
    final roomQuery = Query<Room>(context);
    final rooms = await roomQuery.fetch();

    return Response.ok(rooms);
  }

  @Operation.get('id')
  Future<Response> getRoomsByID(@Bind.path('id') int id) async {
    final roomQuery = Query<Room>(context)
    ..where((r) => r.id).equalTo(id);

    final room = await roomQuery.fetch();
    if(room == null){
      return Response.notFound();
    }
    return Response.ok(room);
  }


}