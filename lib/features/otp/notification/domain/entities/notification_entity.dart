class NotificationEntity {
  String? title;
  String? message;

  NotificationEntity({
    this.title,
    this.message,
  });
  @override
  String toString() {
    return 'ProfileEntity(title: $title, message: $message,)';
  }
}
