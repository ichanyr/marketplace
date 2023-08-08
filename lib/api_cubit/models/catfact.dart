class CatFact {
  final String id;
  final String user;
  final String text;
  final bool verified;
  final String type;
  final bool deleted;
  final bool used;
  final int sentCount;
  final int v;
  final String source;
  final String updatedAt;
  final String createdAt;
  final CatFactStatus status;

  CatFact({
    required this.id,
    required this.user,
    required this.text,
    required this.verified,
    required this.type,
    required this.deleted,
    required this.used,
    required this.sentCount,
    required this.v,
    required this.source,
    required this.updatedAt,
    required this.createdAt,
    required this.status,
  });

  factory CatFact.fromJson(Map<String, dynamic> json) {
    var map = {"data1": "Ini data pertama", "data2": "Ini data kedua"};

    var list = ["Ini data pertama", "Ini data kedua"];

    map["data1"];
    return CatFact(
        id: json['_id'],
        user: json['user'],
        text: json['text'],
        verified: json['status']['verified'],
        type: json['type'],
        deleted: json['deleted'],
        used: json['used'],
        sentCount: json['status']['sentCount'],
        v: json['__v'],
        source: json['source'],
        updatedAt: json['updatedAt'],
        createdAt: json['createdAt'],
        status: CatFactStatus.fromJson(json["status"]));
  }
}

class CatFactStatus {
  final bool verified;
  final int sentCount;

  CatFactStatus({
    required this.verified,
    required this.sentCount,
  });

  factory CatFactStatus.fromJson(Map<String, dynamic> json) {
    return CatFactStatus(
      verified: json['verified'],
      sentCount: json['sentCount'],
    );
  }
}
