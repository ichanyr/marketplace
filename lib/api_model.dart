class Api {
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

  Api({
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
  });

  factory Api.fromJson(Map<String, dynamic> json) {
    return Api(
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
    );
  }
}
