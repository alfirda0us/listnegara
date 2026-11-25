import 'package:flutter/material.dart';

import '../models/country.dart';
import 'type_chip.dart';

class CountryList extends StatelessWidget {
  final Country country;
  final String type;

  final bool isFavorite;
  final VoidCallback onTap;
  final VoidCallback onFavoriteTap;

  const CountryList({
    super.key,
    required this.country,
    required this.type,
    required this.isFavorite,
    required this.onTap,
    required this.onFavoriteTap,
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

  Widget _buildImage() {
    if (country.image.startsWith('http')) {
      return Image.network(
        country.image,
        width: 67,
        height: 67,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) => Container(
          width: 67,
          height: 67,
          color: Colors.grey[300],
          child: const Icon(Icons.flag, size: 30, color: Colors.grey),
        ),
      );
    } else {
      return Image.asset(
        country.image,
        width: 67,
        height: 67,
        fit: BoxFit.cover,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: BorderSide(color: _typeColor(), width: 1),
      ),
      child: ListTile(
        onTap: onTap,
        leading: Hero(
          tag: country.name,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: _buildImage(),
          ),
        ),
        title: Text(
          country.name,
          style: const TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: TypeChip(type: country.type),
          ),
        ),
        trailing: IconButton(
          onPressed: onFavoriteTap,
          icon: isFavorite
              ? const Icon(Icons.favorite)
              : const Icon(Icons.favorite_border),
          color: isFavorite ? Colors.red : Colors.grey,
        ),
      ),
    );
  }
}