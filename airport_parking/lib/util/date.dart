class DateDifference {
  String call(String date) {
    DateTime givenDate = DateTime.parse(date);
    DateTime now = DateTime.now();

    Duration difference = now.difference(givenDate);

    if (difference.inSeconds < 60) {
      return '${difference.inSeconds}초 전';
    } else if (difference.inMinutes < 60) {
      return '${difference.inMinutes}분 전';
    } else if (difference.inHours < 24) {
      return '${difference.inHours}시간 전';
    } else if (difference.inDays < 30) {
      return '${difference.inDays}일 전';
    } else {
      int months = (difference.inDays / 30).floor();
      return '${months}개월 전';
    }
  }
}
