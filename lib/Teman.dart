import 'package:flutter/material.dart';

class Teman extends StatefulWidget {
  const Teman({super.key});

  @override
  State<Teman> createState() => _TemanState();
}

class _TemanState extends State<Teman> {
  late List<String> _filteredList;
  String _keywords = '';
  final List<String> _originList = [
    'Ahmad Saepudin',
    'Aldi Ardyansyah',
    'Anisa Fitriani',
    'Ardhiansyah Tanjung',
    'Arik Saputra Misnanto',
    'Bagus Nurul Ikhsan',
    'Bakti Rizki Nuralam',
    'Dandi Ardiyansyah',
    'Deti Komalasari Silfi',
    'Devin Rival Anugrah',
    'Fauzan Azmi Fadhilah',
    'Firli Setiani',
    'Frecylia Eflyn',
    'Iman Mulyadi',
    'Ismail Al Muzamal',
    'Johan Wahyudi',
    'M Wipaldi Nurpadilah',
    'Maria Marlina Maduwu',
    'Muhammad Fadllullah',
    'Muhammad Muadz Al Chairi',
    'PUTRI AYU NINGTIAS',
    'Pesta Natalia Gultom',
    'RISKA RAYSA NOOR',
    'Reihan Aulia Darojat',
    'Ridwan Badrudin',
    'Silvia Nur Baiti',
    'Syahrul Fathil Gofur',
    'Syarif Nurzaman',
    'Yudhi Anugrah',
    'Zulfikar gustiady',
  ];

  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    _filteredList = [];
    _originList.sort();
    _searchController.addListener(() {
      debugPrint('search value : ${_searchController.text}');
      setState(() => _keywords = _searchController.text);
      _search();
    });
    super.initState();
  }

  void _search() {
    _filteredList.clear();
    for (int i = 0; i < _originList.length; i++) {
      String item = _originList[i];
      if (item.toLowerCase().contains(_keywords.toLowerCase())) {
        _filteredList.add(item);
      }
    }
  }

  Widget _buildList({required List<String> list}) => Expanded(
        child: ListView.separated(
          itemBuilder: (context, index) => SizedBox(
            height: 50,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                list[index],
                style: const TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
          ),
          separatorBuilder: (context, index) =>
              const Divider(height: 2, color: Colors.blue),
          itemCount: list.length,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            controller: _searchController,
            decoration: const InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(color: Colors.blueGrey, fontSize: 18)),
          ),
          _buildList(list: _keywords.isEmpty ? _originList : _filteredList)
        ],
      ),
    );
  }
}
