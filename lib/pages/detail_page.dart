import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../models/country.dart';
import '../widgets/type_chip.dart';

class DetailPage extends StatefulWidget {
  final Country country;
  final String type;
  final bool isFavorite;

  const DetailPage({
    super.key,
    required this.country,
    required this.type,
    required this.isFavorite,
  });

  Color _typeColor() {
    if (type.contains('Tenggara')) return Colors.teal;
    if (type.contains('Timur Tengah')) return Colors.deepOrange;
    if (type.contains('Timur')) return Colors.red;
    if (type.contains('Tengah')) return Colors.amber;
    if (type.contains('Eropa')) return Colors.indigo;
    if (type.contains('Afrika')) return Colors.orange;
    if (type.contains('Selatan')) return Colors.purple;
    return Colors.blue;
  }

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  late bool _isFavorite;

  @override
  void initState() {
    super.initState();
    _isFavorite = widget.isFavorite;
  }

  Widget _buildImage(String path, {double? height}) {
    if (path.startsWith('http')) {
      return Image.network(
        path,
        fit: BoxFit.cover,
        height: height,
        width: double.infinity,
        errorBuilder: (context, error, stackTrace) => Container(
          height: height ?? 250,
          color: Colors.grey[300],
          child: const Icon(Icons.flag, size: 80, color: Colors.grey),
        ),
      );
    } else {
      return Image.asset(
        path,
        fit: BoxFit.cover,
        height: height,
        width: double.infinity,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    int _current = 0;
    final CarouselSliderController _controller = CarouselSliderController();
    final country = widget.country;

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: ((didPop, result) {
        if (didPop) return;
        Navigator.pop(context, _isFavorite);
      }),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            country.name,
            style: const TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context, _isFavorite);
            },
            icon: const Icon(Icons.arrow_back_outlined),
          ),
          backgroundColor: widget._typeColor().withOpacity(0.2),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  _isFavorite = !_isFavorite;
                });
              },
              icon: _isFavorite
                  ? const Icon(Icons.favorite, color: Colors.pink)
                  : const Icon(Icons.favorite_border_rounded, color: Colors.grey),
            ),
            const SizedBox(width: 15),
          ],
          centerTitle: true,
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 768) {
              return Row(
                children: [
                  // Expanded Image
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Hero(
                        tag: country.name,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: _buildImage(country.image),
                        ),
                      ),
                    ),
                  ),
                  // Expanded Profile
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              country.name,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 28,
                                color: Colors.black,
                                fontFamily: "Poppins",
                              ),
                            ),
                            const SizedBox(height: 12),
                            TypeChip(type: country.type),
                            const SizedBox(height: 15),
                            Text(
                              'Populasi: ${country.weight} | Luas: ${country.height}',
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontFamily: "Poppins",
                              ),
                            ),
                            const SizedBox(height: 15),
                            const Text(
                              'Deskripsi',
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Poppins",
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              country.description,
                              textAlign: TextAlign.justify,
                              style: const TextStyle(fontSize: 15, height: 1.4),
                            ),
                            const SizedBox(height: 20),
                            const Text(
                              'Kota Utama / Landmark',
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Poppins",
                              ),
                            ),
                            const SizedBox(height: 8),
                            Wrap(
                              spacing: 8,
                              runSpacing: 8,
                              children: country.skills
                                  .map(
                                    (e) => Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 14,
                                        vertical: 8,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                          color: widget._typeColor(),
                                          width: 1.5,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          const Icon(Icons.location_city, size: 18),
                                          const SizedBox(width: 6),
                                          Text(e, style: const TextStyle(fontFamily: "Poppins")),
                                        ],
                                      ),
                                    ),
                                  )
                                  .toList(),
                            ),
                            const SizedBox(height: 20),
                            const Text(
                              'Galeri & Pemandangan',
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Poppins",
                              ),
                            ),
                            const SizedBox(height: 10),
                            CarouselSlider.builder(
                              options: CarouselOptions(
                                aspectRatio: 2.0,
                                enlargeCenterPage: true,
                                viewportFraction: 0.9,
                              ),
                              itemCount: country.movies.length,
                              itemBuilder: (context, index, realIdx) {
                                return Container(
                                  margin: const EdgeInsets.symmetric(horizontal: 5),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.network(
                                      country.movies[index],
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                      errorBuilder: (context, error, stackTrace) =>
                                          Container(color: Colors.grey[300]),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            } else {
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Hero(
                        tag: country.name,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: _buildImage(country.image, height: 220),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                      padding: const EdgeInsets.all(16.0),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            country.name,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 26,
                              fontFamily: "Poppins",
                            ),
                          ),
                          const SizedBox(height: 10),
                          TypeChip(type: country.type),
                          const SizedBox(height: 12),
                          Text(
                            'Populasi: ${country.weight} | Luas: ${country.height}',
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                              fontFamily: "Poppins",
                            ),
                          ),
                          const SizedBox(height: 16),
                          const Text(
                            'Deskripsi',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Poppins",
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            country.description,
                            textAlign: TextAlign.justify,
                            style: const TextStyle(fontSize: 14, height: 1.4),
                          ),
                          const SizedBox(height: 16),
                          const Text(
                            'Kota Utama / Landmark',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Poppins",
                            ),
                          ),
                          const SizedBox(height: 8),
                          Wrap(
                            spacing: 8,
                            runSpacing: 8,
                            children: country.skills
                                .map(
                                  (e) => Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 6,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                        color: Colors.grey[400]!,
                                        width: 1,
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const Icon(Icons.location_city, size: 16),
                                        const SizedBox(width: 5),
                                        Text(e, style: const TextStyle(fontSize: 13)),
                                      ],
                                    ),
                                  ),
                                )
                                .toList(),
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            'Galeri & Pemandangan',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Poppins",
                            ),
                          ),
                          const SizedBox(height: 10),
                          CarouselSlider(
                            items: country.movies.map((toElement) {
                              return Container(
                                width: MediaQuery.of(context).size.width,
                                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.network(
                                    toElement,
                                    fit: BoxFit.cover,
                                    errorBuilder: (context, error, stackTrace) =>
                                        Container(color: Colors.grey[300]),
                                  ),
                                ),
                              );
                            }).toList(),
                            carouselController: _controller,
                            options: CarouselOptions(
                              autoPlay: true,
                              enlargeCenterPage: true,
                              aspectRatio: 2.0,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  _current = index;
                                });
                              },
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: country.movies.asMap().entries.map((entry) {
                              return GestureDetector(
                                onTap: () => _controller.animateToPage(entry.key),
                                child: Container(
                                  width: 10.0,
                                  height: 10.0,
                                  margin: const EdgeInsets.symmetric(
                                    vertical: 8.0,
                                    horizontal: 4.0,
                                  ),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: (Theme.of(context).brightness ==
                                                Brightness.dark
                                            ? Colors.white
                                            : Colors.black)
                                        .withOpacity(_current == entry.key ? 0.9 : 0.4),
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}