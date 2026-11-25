class Country {
  final String name;
  final String image;
  final String type;
  final int basePower;
  final String description;
  final List<String> skills;
  final List<String> movies;

  final String height; // Luas Wilayah
  final String weight; // Populasi
  final String category; // Bentuk Pemerintahan
  final String ability; // Bahasa Resmi
  final List<String> weaknesses; // Iklim / Tantangan
  final Map<String, int> stats; // Skor Indikator
  final List<String>? evolutions; // Kota-kota Utama

  Country({
    required this.name,
    required this.image,
    required this.type,
    required this.basePower,
    required this.description,
    required this.skills,
    required this.movies,
    required this.height,
    required this.weight,
    required this.category,
    required this.ability,
    required this.weaknesses,
    required this.stats,
    required this.evolutions,
  });
}