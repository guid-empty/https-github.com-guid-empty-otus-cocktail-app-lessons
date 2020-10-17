import 'package:flutter/material.dart';

class GridViewSamplePage extends StatelessWidget {
  final items = List.generate(50, (index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView'),
      ),
      body: SizedBox(child: _buildCustomGridView()),
    );
  }

// Создает GridView стараясь создать элемент с размером maxCrossAxisExtent по основной оси
  Widget _buildExtentGridView() {
    return GridView.extent(
      // размер в пикселях
      scrollDirection: Axis.horizontal,
      maxCrossAxisExtent: 500,
      childAspectRatio: 2.0,
      children: items
          .map((item) => _GridItem(
                index: item,
              ))
          .toList(growable: false),
    );
  }

  // Создает GridView размещая crossAxisCount элементов по основной оси
  Widget _buildCountGridView() {
    return GridView.count(
      crossAxisCount: 4,
      children: items
          .map((item) => _GridItem(
                index: item,
              ))
          .toList(growable: false),
    );
  }

  Widget _buildGridView() {
    return GridView(
        children:
            items.map((item) => _GridItem(index: item)).toList(growable: false),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisSpacing: 8,
          childAspectRatio: 1.0,
        ));
  }

  Widget _buildGridViewFromBuilder() {
    return GridView.builder(
        // itemCount: items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => _GridItem(index: index),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 2, childAspectRatio: 1.0));
  }

  Widget _buildCustomGridView() {
    return GridView.custom(
        scrollDirection: Axis.horizontal,
        childrenDelegate: SliverChildBuilderDelegate(
          (context, index) => _GridItem(index: index),
        ),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300
        ));
        // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: 2, mainAxisSpacing: 2, childAspectRatio: 1.0));
  }
}

class _GridItem extends StatelessWidget {
  final int index;

  const _GridItem({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(child: Text('$index')),
    ));
  }
}

// 1. Рассказываю про GridView.extent и GridView.count
// 2. Рассказываю про SliverGridDelegate и SliverGridDelegateWithFixedCrossAxisCount/SliverGridDelegateWithMaxCrossAxisExtent
// говорю что можно создать свой унаследовавшись от SliverGridDelegate

// 3. SliverChildDelegate мы уже прошли
