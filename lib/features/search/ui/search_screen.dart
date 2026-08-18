import 'package:flutter/material.dart';
import 'package:yumgo/features/search/data/histories.dart';
import 'package:yumgo/features/search/widgets/search_categories.dart';
import 'package:yumgo/features/search/widgets/search_history.dart';
import 'package:yumgo/widgets/app_search_field.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late FocusNode _focusNode;
  late TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _searchController = TextEditingController();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _focusNode.requestFocus();
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            AppSearchField(
              hint: "Tìm kiếm...",
              focusNode: _focusNode,
              controller: _searchController,
            ),
            SizedBox(height: 20.0),
            SearchHistory(
              onTap: (historyKey) {
                setState(() {
                  _searchController.text = historyKey;
                });
              },
              onClear: () {
                setState(() {
                  searchHistories.clear();
                });
              },
              onRemove: (historyKey) => {
                setState(() {
                  searchHistories.removeWhere(
                    (history) => history.key == historyKey,
                  );
                }),
              },
            ),
            SizedBox(height: 20),
            SearchCategories(),
          ],
        ),
      ),
    );
  }
}
