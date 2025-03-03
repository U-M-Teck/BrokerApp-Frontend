class UserNotificationsModel {
  List<Notifications>? notifications;
  bool? success;
  dynamic error;

  UserNotificationsModel({this.notifications, this.success, this.error});

  UserNotificationsModel.fromJson(Map<String, dynamic> json) {
    if (json['notifications'] != null) {
      notifications = <Notifications>[];
      json['notifications'].forEach((v) {
        notifications!.add(Notifications.fromJson(v));
      });
    }
    success = json['success'];
    error = json['error'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (notifications != null) {
      data['notifications'] =
          notifications!.map((v) => v.toJson()).toList();
    }
    data['success'] = success;
    data['error'] = error;
    return data;
  }
}

class Notifications {
  String? description;
  String? date;
  int? id;

  Notifications({this.description, this.date, this.id});

  Notifications.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    date = json['date'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['description'] = description;
    data['date'] = date;
    data['id'] = id;
    return data;
  }
}
