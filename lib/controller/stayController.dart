import 'dart:convert';


import 'package:radon_http/model/stay.dart';
import 'package:radon_http/radon_http.dart';


class StayController extends ResourceController {
  StayController(this.context);

  final ManagedContext context;

  @override
  List<ContentType> acceptedContentTypes = [
    ContentType("application", "x-www-form-urlencoded")];

  @Operation.get()
  Future<Response> getAllStays() async {
    final stayQuery = Query<Stay>(context);
    final stays = await stayQuery.fetch();

    return Response.ok(stays);
  }

  @Operation.get('id')
  Future <Response> getStaysByID(@Bind.path('id') int id) async {
    final stayQuery = Query<Stay>(context)
      ..where((s) => s.id).equalTo(id);

    final stay = await stayQuery.fetch();
    if (stay == null) {
      return Response.notFound();
    }
    return Response.ok(stay);
  }


  @Operation.post()
  Future<Response> createStay() async {
    logger.parent.level = Level.INFO;
    logger.onRecord.listen((rec) =>
        print("$rec ${rec.error ?? ""} ${rec.stackTrace ?? ""}"));


    final Map<String, dynamic> json = await request.body.decode();
    final query = Query<Stay>(context)
      ..values.startTime = DateTime.parse(json["startTime"].first.toString() )
      ..values.endTime = DateTime.parse(json["endTime"].first.toString())
      ..values.dose = int.parse(json["dose"].first.toString());
      


    final insertedStay = query.insert();
    var ok = 'ok';

    return Response.ok(ok);
  }
}
