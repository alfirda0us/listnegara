import 'package:flutter/material.dart';

import '../models/country.dart';
import 'type_chip.dart';

class CountryCard extends StatelessWidget {
  final Country country;
  final String type;

  final bool isFavorite;
  final VoidCallback onTap;
  final VoidCallback onFavoriteTap;

  const CountryCard({
    super.key,
    required this.country,
    required this.type,
    required this.isFavorite,
    required this.onTap,
    required this.onFavoriteTap,
  });

  @override
  Widget build(BuildContext context) {
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

    Widget _buildImage() {
      if (country.image.startsWith('http')) {
        return Image.network(
          country.image,
          fit: BoxFit.cover,
          width: double.infinity,
          height: 200,
          errorBuilder: (context, error, stackTrace) => Container(
            height: 200,
            color: Colors.grey[300],
            child: const Icon(Icons.flag, size: 50, color: Colors.grey),
          ),
        );
      } else {
        return Image.asset(
          country.image,
          fit: BoxFit.cover,
          width: double.infinity,
          height: 200,
        );
      }
    }

    return InkWell(
      onTap: onTap,
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          margin: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: _typeColor().withOpacity(0.2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                children: [
                  Hero(
                    tag: country.name,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: _buildImage(),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: FloatingActionButton(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      onPressed: () {
                        onFavoriteTap();
                      },
                      child: isFavorite
                          ? const Icon(Icons.favorite, color: Colors.red)
                          : const Icon(Icons.favorite_border, color: Colors.white),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        country.name,
                        style: const TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    TypeChip(type: country.type),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                child: Text(
                  country.description,
                  style: const TextStyle(
                    letterSpacing: 0.5,
                    fontSize: 11,
                    fontFamily: "Poppins",
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}