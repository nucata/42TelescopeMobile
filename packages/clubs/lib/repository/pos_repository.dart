import 'package:master_detail/master_detail.dart';

import '../clubs.dart';

class PosRepository extends MasterDetailRepository<Club> {
  PosRepository() : super();

  @override
  Club fromJson(Map<String, dynamic> json) {
    return Club.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(Club data) {
    return data.toJson();
  }
}
