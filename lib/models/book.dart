class Book {
  final String id;
  final String title;
  final String? subtitle;
  final List<String>? authors;
  final String? description;
  final String? thumbnail;
  final String? downloadLink; // Add this field

  Book({
    required this.id,
    required this.title,
    this.subtitle,
    this.authors,
    this.description,
    this.thumbnail,
    this.downloadLink, // Add this field
  });

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      id: json['id'],
      title: json['volumeInfo']['title'],
      subtitle: json['volumeInfo']['subtitle'],
      authors: List<String>.from(json['volumeInfo']['authors'] ?? []),
      description: json['volumeInfo']['description'],
      thumbnail: json['volumeInfo']['imageLinks']?['thumbnail'],
      downloadLink: json['accessInfo']?['pdf']?['downloadLink'], // Add this field
    );
  }
}