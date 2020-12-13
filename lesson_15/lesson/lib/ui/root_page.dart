import 'package:flutter/material.dart';
import 'package:lesson/core/models.dart';
import 'package:lesson/persistence/repository.dart';

class RootPage extends StatelessWidget {
  const RootPage(this.cocktailRepository, {Key key}) : super(key: key);

  final Repository cocktailRepository;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              onPressed: _addOne,
              child: Text('add cocktail'),
            ),
            TextButton(
              onPressed: _getOne,
              child: Text('get cocktail'),
            ),
            TextButton(
              onPressed: _updateFirst,
              child: Text('update first'),
            ),
            TextButton(
              onPressed: _deleteFirst,
              child: Text('delete first'),
            ),
            TextButton(
              onPressed: _addMany,
              child: Text('add many'),
            ),
            TextButton(
              onPressed: _getAll,
              child: Text('get all'),
            ),
            TextButton(
              onPressed: _getFavourites,
              child: Text('get Favourites'),
            ),
          ],
        ),
      ),
    );
  }

  void _addOne() {
    final c = _generateCocktail(1);
    var s = Stopwatch()..start();
    cocktailRepository.add(c.id, c);
    s.stop();
    print('add one time :${s.elapsedMilliseconds} ms');
  }

  Future<void> _getOne() async {
    var s = Stopwatch()..start();
    final c = await cocktailRepository.get('1');
    s.stop();
    print('get one time :${s.elapsedMilliseconds} ms');
  }

  void _addMany() {
    final items = List.generate(10000, (index) => _generateCocktail(index));
    var s = Stopwatch()..start();
    cocktailRepository.addAll(items);
    final ind = items.length + 1;
    cocktailRepository
        .add('${ind}', _generateCocktail(ind, isFavourite: true));
    s.stop();
    print('add ${items.length} elements time :${s.elapsedMilliseconds} ms');
  }

  Future<void> _getAll() async {
    var s = Stopwatch()..start();
    final c = await cocktailRepository.getAll();
    print('get all elements time :${s.elapsedMilliseconds} ms');
    print('count:${c.length}');
  }

  Future<void> _getFavourites() async {
    var s = Stopwatch()..start();
    final c = await cocktailRepository.getFavourites();
    s.stop();
    print('get Favourites time :${s.elapsedMilliseconds} ms');
    print('count:${c.length}');
  }

  Future<void> _updateFirst() async {
    var s = Stopwatch()..start();
    await cocktailRepository
        .update('1', _generateCocktail(1, isFavourite: true));
    s.stop();
    print('update First time :${s.elapsedMilliseconds} ms');
  }

  Future<void> _deleteFirst() async {
    var s = Stopwatch()..start();
    await cocktailRepository.remove('1');
    s.stop();
    print('delete First time :${s.elapsedMilliseconds} ms');
  }
}



Cocktail _generateCocktail(int id, {bool isFavourite = false}) {
  return Cocktail(
      id: '$id',
      name: 'name',
      instruction: '',
      category: CocktailCategory.cocktail,
      glassType: GlassType.balloonGlass,
      cocktailType: CocktailType.alcoholic,
      ingredients: [],
      drinkThumbUrl: '',
      isFavourite: isFavourite);
}
