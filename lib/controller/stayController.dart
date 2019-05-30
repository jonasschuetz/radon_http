import 'package:radon_http/model/stay.dart';
import 'package:radon_http/radon_http.dart';

class StayController extends ResourceController{
  StayController(this.context);

  final ManagedContext context;

  @Operation.get()
  Future<Response> getAllStays() async{
    final stayQuery = Query<Stay>(context);
    final stays = await stayQuery.fetch();

    return Response.ok(stays);
  }

  @Operation.get('id') 
  Future <Response> getStaysByID(@Bind.path('id') int id) async {
    final stayQuery = Query<Stay>(context)
    ..where((s) => s.id).equalTo(id);

    final stay = await stayQuery.fetch();
    if(stay == null){
      return Response.notFound();
    }
    return Response.ok(stay);
  }
  @Operation.post()
  Future<Response> createStay() async {
    final map = request.body.as<Map<String, dynamic>>();

    final response = Response.ok(map)
    ..contentType = ContentType.json;



    var insertedStay = await query.insert();

    return Response.ok(insertedStay);
  }
}