// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class MoviesList {
  int? rank;
  String? title;
  String? description;
  String? image;
  String? bigImage;
  List<String>? genre;
  String? thumbnail;
  String? rating;
  String? id;
  int? year;
  String? imdbid;
  String? imdbLink;
  MoviesList({
    this.rank,
    this.title,
    this.description,
    this.image,
    this.bigImage,
    this.genre,
    this.thumbnail,
    this.rating,
    this.id,
    this.year,
    this.imdbid,
    this.imdbLink,
  });

  MoviesList copyWith({
    int? rank,
    String? title,
    String? description,
    String? image,
    String? bigImage,
    List<String>? genre,
    String? thumbnail,
    String? rating,
    String? id,
    int? year,
    String? imdbid,
    String? imdbLink,
  }) {
    return MoviesList(
      rank: rank ?? this.rank,
      title: title ?? this.title,
      description: description ?? this.description,
      image: image ?? this.image,
      bigImage: bigImage ?? this.bigImage,
      genre: genre ?? this.genre,
      thumbnail: thumbnail ?? this.thumbnail,
      rating: rating ?? this.rating,
      id: id ?? this.id,
      year: year ?? this.year,
      imdbid: imdbid ?? this.imdbid,
      imdbLink: imdbLink ?? this.imdbLink,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rank': rank,
      'title': title,
      'description': description,
      'image': image,
      'bigImage': bigImage,
      'genre': genre,
      'thumbnail': thumbnail,
      'rating': rating,
      'id': id,
      'year': year,
      'imdbid': imdbid,
      'imdbLink': imdbLink,
    };
  }

  factory MoviesList.fromMap(Map<String, dynamic> map) {
    return MoviesList(
      rank: map['rank'] != null ? map['rank'] as int : null,
      title: map['title'] != null ? map['title'] as String : null,
      description:
          map['description'] != null ? map['description'] as String : null,
      image: map['image'] != null ? map['image'] as String : null,
      bigImage: map['bigImage'] != null ? map['bigImage'] as String : null,
      genre: map['genre'] != null
          ? List<String>.from((map['genre'] as List<String>))
          : null,
      thumbnail: map['thumbnail'] != null ? map['thumbnail'] as String : null,
      rating: map['rating'] != null ? map['rating'] as String : null,
      id: map['id'] != null ? map['id'] as String : null,
      year: map['year'] != null ? map['year'] as int : null,
      imdbid: map['imdbid'] != null ? map['imdbid'] as String : null,
      imdbLink: map['imdbLink'] != null ? map['imdbLink'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory MoviesList.fromJson(String source) =>
      MoviesList.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'MoviesList(rank: $rank, title: $title, description: $description, image: $image, bigImage: $bigImage, genre: $genre, thumbnail: $thumbnail, rating: $rating, id: $id, year: $year, imdbid: $imdbid, imdbLink: $imdbLink)';
  }

  @override
  bool operator ==(covariant MoviesList other) {
    if (identical(this, other)) return true;

    return other.rank == rank &&
        other.title == title &&
        other.description == description &&
        other.image == image &&
        other.bigImage == bigImage &&
        listEquals(other.genre, genre) &&
        other.thumbnail == thumbnail &&
        other.rating == rating &&
        other.id == id &&
        other.year == year &&
        other.imdbid == imdbid &&
        other.imdbLink == imdbLink;
  }

  @override
  int get hashCode {
    return rank.hashCode ^
        title.hashCode ^
        description.hashCode ^
        image.hashCode ^
        bigImage.hashCode ^
        genre.hashCode ^
        thumbnail.hashCode ^
        rating.hashCode ^
        id.hashCode ^
        year.hashCode ^
        imdbid.hashCode ^
        imdbLink.hashCode;
  }
}
