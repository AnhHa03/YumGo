import 'package:flutter/material.dart';
import 'package:yumgo/features/search/data/histories.dart';
import 'package:yumgo/features/search/widgets/search_history.dart';
import 'package:yumgo/widgets/app_search_field.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _focusNode.requestFocus();
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.fromLTRB(20.0, topPadding + 20.0, 20.0, 20.0),
        child: Column(
          children: [
            AppSearchField(hint: "Tìm kiếm...", focusNode: _focusNode),
            SizedBox(height: 20.0),
            SearchHistory(
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
          ],
        ),
      ),
    );
  }
}
