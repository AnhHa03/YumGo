class Notif {
  final String id;
  final String title;
  final String message;
  late bool isRead = false;
  final DateTime createdAt;

  Notif({
    required this.id,
    required this.title,
    required this.message,
    required this.createdAt,
  });
}
