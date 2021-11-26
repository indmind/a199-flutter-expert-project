import 'package:equatable/equatable.dart';

class WatchlistTable extends Equatable {
  final int id;
  final String? title;
  final String? posterPath;
  final String? overview;
  // move or tv
  final String? type;

  const WatchlistTable({
    required this.id,
    required this.title,
    required this.posterPath,
    required this.overview,
    this.type = "movie",
  });

  factory WatchlistTable.fromMap(Map<String, dynamic> map) => WatchlistTable(
        id: map['id'],
        title: map['title'],
        posterPath: map['posterPath'],
        overview: map['overview'],
        type: map['type'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'posterPath': posterPath,
        'overview': overview,
        'type': type,
      };

  @override
  List<Object?> get props => [id, title, posterPath, overview];
}
