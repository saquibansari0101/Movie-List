// To parse this JSON data, do
//
//     final quoteModel = quoteModelFromMap(jsonString);

import 'dart:convert';

QuoteModel quoteModelFromMap(String str) => QuoteModel.fromMap(json.decode(str));

String quoteModelToMap(QuoteModel data) => json.encode(data.toMap());

class QuoteModel {
  QuoteModel({
    this.title,
    this.year,
    this.rated,
    this.released,
    this.runtime,
    this.genre,
    this.director,
    this.writer,
    this.actors,
    this.plot,
    this.language,
    this.country,
    this.awards,
    this.poster,
    this.metascore,
    this.imdbRating,
    this.imdbVotes,
    this.imdbId,
    this.type,
    this.response,
    this.images,
  });

  String title;
  String year;
  String rated;
  String released;
  String runtime;
  String genre;
  String director;
  String writer;
  String actors;
  String plot;
  String language;
  String country;
  String awards;
  String poster;
  String metascore;
  String imdbRating;
  String imdbVotes;
  String imdbId;
  String type;
  String response;
  List<String> images;

  factory QuoteModel.fromMap(Map<String, dynamic> json) => QuoteModel(
    title: json["Title"] == null ? null : json["Title"],
    year: json["Year"] == null ? null : json["Year"],
    rated: json["Rated"] == null ? null : json["Rated"],
    released: json["Released"] == null ? null : json["Released"],
    runtime: json["Runtime"] == null ? null : json["Runtime"],
    genre: json["Genre"] == null ? null : json["Genre"],
    director: json["Director"] == null ? null : json["Director"],
    writer: json["Writer"] == null ? null : json["Writer"],
    actors: json["Actors"] == null ? null : json["Actors"],
    plot: json["Plot"] == null ? null : json["Plot"],
    language: json["Language"] == null ? null : json["Language"],
    country: json["Country"] == null ? null : json["Country"],
    awards: json["Awards"] == null ? null : json["Awards"],
    poster: json["Poster"] == null ? null : json["Poster"],
    metascore: json["Metascore"] == null ? null : json["Metascore"],
    imdbRating: json["imdbRating"] == null ? null : json["imdbRating"],
    imdbVotes: json["imdbVotes"] == null ? null : json["imdbVotes"],
    imdbId: json["imdbID"] == null ? null : json["imdbID"],
    type: json["Type"] == null ? null : json["Type"],
    response: json["Response"] == null ? null : json["Response"],
    images: json["Images"] == null ? null : List<String>.from(json["Images"].map((x) => x)),
  );

  Map<String, dynamic> toMap() => {
    "Title": title == null ? null : title,
    "Year": year == null ? null : year,
    "Rated": rated == null ? null : rated,
    "Released": released == null ? null : released,
    "Runtime": runtime == null ? null : runtime,
    "Genre": genre == null ? null : genre,
    "Director": director == null ? null : director,
    "Writer": writer == null ? null : writer,
    "Actors": actors == null ? null : actors,
    "Plot": plot == null ? null : plot,
    "Language": language == null ? null : language,
    "Country": country == null ? null : country,
    "Awards": awards == null ? null : awards,
    "Poster": poster == null ? null : poster,
    "Metascore": metascore == null ? null : metascore,
    "imdbRating": imdbRating == null ? null : imdbRating,
    "imdbVotes": imdbVotes == null ? null : imdbVotes,
    "imdbID": imdbId == null ? null : imdbId,
    "Type": type == null ? null : type,
    "Response": response == null ? null : response,
    "Images": images == null ? null : List<dynamic>.from(images.map((x) => x)),
  };
}
