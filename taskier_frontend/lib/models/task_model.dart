class TaskModel {
  String? sId;
  String? title;
  String? description;
  String? startTime;
  String? endTime;
  String? priority;
  String? status;
  String? createdAt;
  String? updatedAt;
  int? iV;

  TaskModel(
      {this.sId,
      this.title,
      this.description,
      this.startTime,
      this.endTime,
      this.priority,
      this.status,
      this.createdAt,
      this.updatedAt,
      this.iV});

  TaskModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    title = json['title'];
    description = json['description'];
    startTime = json['startTime'];
    endTime = json['endTime'];
    priority = json['priority'];
    status = json['status'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['title'] = this.title;
    data['description'] = this.description;
    data['startTime'] = this.startTime;
    data['endTime'] = this.endTime;
    data['priority'] = this.priority;
    data['status'] = this.status;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}
