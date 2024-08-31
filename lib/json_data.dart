class TrackingResponseData {
  String? messageId;
  bool? success;
  int? statusCode;
  List<Results>? results;

  TrackingResponseData(
      {this.messageId, this.success, this.statusCode, this.results});

  TrackingResponseData.fromJson(Map<String, dynamic> json) {
    messageId = json['message_id'];
    success = json['success'];
    statusCode = json['status_code'];
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message_id'] = messageId;
    data['success'] = success;
    data['status_code'] = statusCode;
    if (results != null) {
      data['results'] = results!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Results {
  String? trackingReference;
  List<TrackingEvents>? trackingEvents;

  Results({this.trackingReference, this.trackingEvents});

  Results.fromJson(Map<String, dynamic> json) {
    trackingReference = json['tracking_reference'];
    if (json['tracking_events'] != null) {
      trackingEvents = <TrackingEvents>[];
      json['tracking_events'].forEach((v) {
        trackingEvents!.add(TrackingEvents.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['tracking_reference'] = trackingReference;
    if (trackingEvents != null) {
      data['tracking_events'] = trackingEvents!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TrackingEvents {
  String? dateTime;
  String? description;
  String? edifactCode;
  String? seqref;
  String? source;
  String? status;
  String? depotName;
  String? pbu;
  String? runName;
  SignedBy? signedBy;

  TrackingEvents(
      {this.dateTime,
      this.description,
      this.edifactCode,
      this.seqref,
      this.source,
      this.status,
      this.depotName,
      this.pbu,
      this.runName,
      this.signedBy});

  TrackingEvents.fromJson(Map<String, dynamic> json) {
    dateTime = json['date_time'];
    description = json['description'];
    edifactCode = json['edifact_code'];
    seqref = json['seqref'];
    source = json['source'];
    status = json['status'];
    depotName = json['depot_name'];
    pbu = json['pbu'];
    runName = json['run_name'];
    signedBy =
        json['signed_by'] != null ? SignedBy.fromJson(json['signed_by']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['date_time'] = dateTime;
    data['description'] = description;
    data['edifact_code'] = edifactCode;
    data['seqref'] = seqref;
    data['source'] = source;
    data['status'] = status;
    data['depot_name'] = depotName;
    data['pbu'] = pbu;
    data['run_name'] = runName;
    if (signedBy != null) {
      data['signed_by'] = signedBy!.toJson();
    }
    return data;
  }
}

class SignedBy {
  String? name;
  String? signature;

  SignedBy({this.name, this.signature});

  SignedBy.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    signature = json['signature'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['signature'] = signature;
    return data;
  }
}
