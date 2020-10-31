// TODO: Сделать экран Фильтр по категории

import 'package:cocktail/core/src/model/cocktail_category.dart';
import 'package:cocktail/core/src/repository/async_cocktail_repository.dart';
import 'package:flutter/material.dart';

class CocktailsFilterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFF1A1926),
      child: Padding(
        padding: const EdgeInsets.only(top: 48),
        child: Column(
          children: [
            _buildSearchField(),
            FilterBar(),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchField() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(13, 0, 13, 19),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color(0xFF181723),
        ),
        child: Row(
          children: [
            const SizedBox(width: 16),
            Icon(
              Icons.search,
              size: 28,
              color: const Color(0xFFFFFFFF),
            ),
            Flexible(child: TextField()),
            Icon(
              Icons.close,
              size: 18,
              color: Colors.grey,
            ),
            const SizedBox(width: 13),
          ],
        ),
      ),
    );
  }
}

class FilterBar extends StatefulWidget {
  @override
  _FilterBarState createState() => _FilterBarState();
}

class _FilterBarState extends State<FilterBar> {
  int _defaultChoiceIndex;
  final _controller = ScrollController();

  @override
  void initState() {
    super.initState();
    _defaultChoiceIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: CocktailCategory.values.length,
              itemBuilder: (context, index) {
                return Wrap(
                  children: [
                    SizedBox(width: 10),
                    ChoiceChip(
                      selected: _defaultChoiceIndex == index,
                      backgroundColor: const Color(0xFF201F2C),
                      selectedColor: const Color(0xFF3B3953),
                      label: Text(
                        CocktailCategory.values.elementAt(index).value,
                        style: TextStyle(color: Colors.white),
                      ),
                      onSelected: (bool selected) {
                        setState(
                          () {
                            _defaultChoiceIndex = selected ? index : 0;
                            _controller.jumpTo(0);
                          },
                        );
                      },
                    ),
                  ],
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(27, 0, 27, 0),
            height: MediaQuery.of(context).size.height / 1.37,
            child: CoctailList(
              choiceIndex: _defaultChoiceIndex,
              controller: _controller,
            ),
          ),
        ],
      ),
    );
  }
}

class CoctailList extends StatelessWidget {
  final int choiceIndex;
  final ScrollController controller;

  CoctailList({
    Key key,
    this.choiceIndex,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: AsyncCocktailRepository().fetchCocktailsByCocktailCategory(
          CocktailCategory.values.elementAt(choiceIndex)),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final List dataCount = snapshot.data;
          return CustomScrollView(
            controller: controller,
            slivers: [
              SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => _buildCoctailGridElement(snapshot, index),
                  childCount: dataCount.length,
                ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, mainAxisSpacing: 5, crossAxisSpacing: 5),
              )
            ],
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text(
              'Сообщение об ошибке',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 14),
            ),
          );
        }
        return Center(
          child: Text(
            'Поиск...',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w400, fontSize: 14),
          ),
        );
      },
    );
  }

  Widget _buildCoctailGridElement(AsyncSnapshot snapshot, int index) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Colors.black54, Colors.black],
              begin: Alignment.center,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Opacity(
            opacity: 0.8,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image(
                image: NetworkImage(snapshot.data[index].drinkThumbUrl),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 16,
          left: 14,
          child: Chip(
            label: Text(
              'id: ${snapshot.data[index].id}',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 10),
            ),
            backgroundColor: const Color(0xFF15151C),
          ),
        ),
        Positioned(
          bottom: 60,
          left: 16,
          child: Container(
            width: 128,
            height: 34,
            child: Text(
              '"${snapshot.data[index].name}"',
              maxLines: 2,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
            ),
          ),
        ),
      ],
    );
  }
}
