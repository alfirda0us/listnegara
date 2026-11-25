import 'package:flutter/material.dart';

import '../data/country_data.dart';
import '../models/country.dart';
import '../widgets/country_card.dart';
import '../widgets/country_list.dart';
import 'detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Country> countries = countryData;

  String _searchQuery = "";
  bool _showFavoriteOnly = false;
  final Set<String> _favoriteCountries = {};
  final TextEditingController _searchController = TextEditingController();

  void _toggleFavorite(String name) {
    setState(() {
      if (_favoriteCountries.contains(name)) {
        _favoriteCountries.remove(name);
      } else {
        _favoriteCountries.add(name);
      }
    });
  }

  Future<void> _openDetail(Country item, bool isFavorite) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => DetailPage(
          country: item,
          type: item.type,
          isFavorite: isFavorite,
        ),
      ),
    );

    if (result != null) {
      setState(() {
        if (result) {
          _favoriteCountries.add(item.name);
        } else {
          _favoriteCountries.remove(item.name);
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final filtered = countryData.where((p) {
      final q = _searchQuery.toLowerCase();
      final matchesSearch = p.name.toLowerCase().contains(q) ||
          p.type.toLowerCase().contains(q) ||
          p.description.toLowerCase().contains(q);
      final matchesFavorite =
          !_showFavoriteOnly || _favoriteCountries.contains(p.name);
      return matchesSearch && matchesFavorite;
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Daftar Negara",
          style: TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _searchController,
                    onChanged: (value) {
                      setState(() {
                        _searchQuery = value;
                      });
                    },
                    decoration: InputDecoration(
                      hintText: "Cari Negara...",
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Row(
                  children: [
                    Icon(
                      _showFavoriteOnly ? Icons.favorite : Icons.favorite_border,
                      color: _showFavoriteOnly ? Colors.red : Colors.grey,
                    ),
                    Switch(
                      value: _showFavoriteOnly,
                      onChanged: (value) {
                        setState(() {
                          _showFavoriteOnly = value;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: filtered.isEmpty
                ? const Center(
                    child: Text(
                      "Negara tidak ditemukan",
                      style: TextStyle(fontFamily: "Poppins", fontSize: 16),
                    ),
                  )
                : LayoutBuilder(
                    builder: (context, constraints) {
                      if (constraints.maxWidth <= 425) {
                        return ListView.builder(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          itemBuilder: (context, index) {
                            final country = filtered[index];
                            final isFavorite = _favoriteCountries.contains(
                              country.name,
                            );
                            return CountryList(
                              country: country,
                              isFavorite: isFavorite,
                              onTap: () {
                                _openDetail(country, isFavorite);
                              },
                              onFavoriteTap: () {
                                _toggleFavorite(country.name);
                              },
                              type: country.type,
                            );
                          },
                          itemCount: filtered.length,
                        );
                      } else {
                        int column = 2;
                        if (constraints.maxWidth > 768 && constraints.maxWidth < 1024) {
                          column = 3;
                        }
                        if (constraints.maxWidth >= 1024) column = 4;
                        return GridView.builder(
                          padding: const EdgeInsets.all(8),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: column,
                            crossAxisSpacing: 12,
                            mainAxisExtent: 340,
                            mainAxisSpacing: 8,
                          ),
                          itemBuilder: (context, index) {
                            final country = filtered[index];
                            final isFavorite = _favoriteCountries.contains(
                              country.name,
                            );
                            return CountryCard(
                              country: country,
                              type: country.type,
                              isFavorite: isFavorite,
                              onTap: () => _openDetail(country, isFavorite),
                              onFavoriteTap: () => _toggleFavorite(country.name),
                            );
                          },
                          itemCount: filtered.length,
                        );
                      }
                    },
                  ),
          ),
        ],
      ),
    );
  }
}