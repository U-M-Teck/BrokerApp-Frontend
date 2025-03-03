class GetAllDurationsModel {
  List<Durations>? durations;
  dynamic error;
  bool? success;

  GetAllDurationsModel({this.durations, this.error, this.success});

  GetAllDurationsModel.fromJson(Map<String, dynamic> json) {
    if (json['durations'] != null) {
      durations = <Durations>[];
      json['durations'].forEach((v) {
        durations!.add(Durations.fromJson(v));
      });
    }
    error = json['error'];
    success = json['success'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (durations != null) {
      data['durations'] = durations!.map((v) => v.toJson()).toList();
    }
    data['error'] = error;
    data['success'] = success;
    return data;
  }
}

class Durations {
  int? period;
  dynamic amount;
  List<String>? types;
  bool? isPublish;
  int? id;

  Durations({this.period, this.amount, this.types, this.isPublish, this.id});

  Durations.fromJson(Map<String, dynamic> json) {
    period = json['period'];
    amount = json['amount'];
    types = json['types'].cast<String>();
    isPublish = json['isPublish'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['period'] = period;
    data['amount'] = amount;
    data['types'] = types;
    data['isPublish'] = isPublish;
    data['id'] = id;
    return data;
  }
}
