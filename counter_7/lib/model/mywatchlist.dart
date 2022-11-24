
class MyWatchList{
  bool watched;
  String title;
  int rating;
  String release_date;
  String review;
  
  MyWatchList({required this.watched, required this.title, required this.rating, required this.release_date,required this.review});
  
  factory MyWatchList.fromJson(Map<String, dynamic> json) => MyWatchList(
      watched: json["fields"]["watched"],
      title: json["fields"]["title"],
      rating: json["fields"]["rating"],
      release_date: json["fields"]["release_date"],
      review: json["fields"]["review"]);

  Map<String, dynamic> toJson() => {
        "title": title,
      };
}
