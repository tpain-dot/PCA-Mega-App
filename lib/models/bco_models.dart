class BcoSection {
  final String id;
  final String title;
  final String? subtitle;
  final List<BcoChapter> chapters;

  const BcoSection({
    required this.id,
    required this.title,
    this.subtitle,
    required this.chapters,
  });
}

class BcoChapter {
  final int? number;
  final String id;
  final String title;
  final String sectionId;
  String? htmlContent;
  String? plainText;

  BcoChapter({
    this.number,
    required this.id,
    required this.title,
    required this.sectionId,
    this.htmlContent,
    this.plainText,
  });
}

class SearchResult {
  final BcoChapter chapter;
  final String snippet;
  final int matchIndex;

  const SearchResult({
    required this.chapter,
    required this.snippet,
    required this.matchIndex,
  });
}

class Bookmark {
  final String chapterId;
  final DateTime createdAt;

  const Bookmark({
    required this.chapterId,
    required this.createdAt,
  });

  Map<String, dynamic> toJson() => {
        'chapterId': chapterId,
        'createdAt': createdAt.toIso8601String(),
      };

  factory Bookmark.fromJson(Map<String, dynamic> json) => Bookmark(
        chapterId: json['chapterId'] as String,
        createdAt: DateTime.parse(json['createdAt'] as String),
      );
}
