class MagicCard {
  final String name;
  final String manaCost;
  final String type;
  final String rarity;
  final String artist;
  final String imageUrl;
  final String id;

  MagicCard({
    this.name,
    this.manaCost,
    this.type,
    this.rarity,
    this.artist,
    this.imageUrl,
    this.id,
  });

  factory MagicCard.fromJson(Map<String, dynamic> json) {
    return new MagicCard(
      name: json['name'],
      manaCost: json['manaCost'],
      type: json['type'],
      rarity: json['rarity'],
      artist: json['artist'],
      imageUrl: json['imageUrl'],
      id: json['id'],
    );
  }
}
