// TODO: Сделать экран Фильтр по категории
// Ссылка на макет: https://www.figma.com/file/Uzn5jHYiiFgacPCWNhwbc5/%D0%9A%D0%BE%D0%BA%D1%82%D0%B5%D0%B9%D0%BB%D0%B8-Copy?node-id=20%3A590

// 1. Фильты - это CocktailCategory, получить все значения можно через CocktailCategory.values
// 2. Поиск по фильтру делаем через AsyncCocktailRepository().fetchCocktailsByCocktailCategory(CocktailCategory)
// 3. Используем StreamBuilder/FutureBuilder
// 4. По нажатию на категорию на странице должны обновится список коктейлей. Выбранная категория подсвечивается как в дизайне. По умолчанию выбрана первая категория.
// 5. Поиск по названию пока что не делаем!
// 6. Должны отображаться ошибки и состояние загрузки.
// 7. Для скролла используем CustomScrollView
// 8. Делаем fork от репозитория и сдаем через PR
// 9. Помним про декомпозицию кода по методам и классам.

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lesson/app/core/src/model/cocktail_category.dart';
import 'package:lesson/app/core/src/model/cocktail_definition.dart';
import 'package:lesson/app/core/src/repository/async_cocktail_repository.dart';
import 'package:lesson/app/style/colors.dart';

import '../coctail_detail_page.dart';
import 'cocktail_grid_item.dart';
import 'coctail_detail_dialog.dart';
import 'fitler_bar.dart';

class CocktailsFilterScreen2 extends StatefulWidget {
  const CocktailsFilterScreen2(
    this.repository, {
    Key key,
  }) : super(key: key);

  final AsyncCocktailRepository repository;

  @override
  _CocktailsFilterScreen2State createState() => _CocktailsFilterScreen2State();
}

class _CocktailsFilterScreen2State extends State<CocktailsFilterScreen2> {
  final _categoryNotifier =
      ValueNotifier<CocktailCategory>(CocktailCategory.values.first);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: _categoryNotifier,
          builder: (ctx, value, child) {
            return CustomScrollView(
              slivers: [
                SliverToBoxAdapter(child: SizedBox(height: 21)),
                SliverPersistentHeader(
                  delegate: CategoriesFilterBarDelegate(
                    CocktailCategory.values,
                    onCategorySelected: (category) {
                      _categoryNotifier.value = category;
                    },
                    selectedCategory: _categoryNotifier.value,
                  ),
                  floating: true,
                ),
                SliverToBoxAdapter(child: SizedBox(height: 24)),
                _buildCocktailItems(context)
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildCocktailItems(BuildContext context) {
    return FutureBuilder<Iterable<CocktailDefinition>>(
        future: widget.repository
            .fetchCocktailsByCocktailCategory(_categoryNotifier.value),
        builder: (ctx, snapshot) {
          if (snapshot.hasError) {
            return SliverFillRemaining(
                child: Center(child: Text(snapshot.error.toString())));
          }

          if (snapshot.hasData) {
            return SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              sliver: SliverGrid(
                  delegate: SliverChildBuilderDelegate((ctx, index) {
                    return GestureDetector(
                      onTap: () {
                        _showDetailPage(
                            context, snapshot.data.elementAt(index));
                      },
                      // onLongPress: () {
                      //   _showPopupDetails(
                      //       context, snapshot.data.elementAt(index));
                      // },
                      child: MarkWidget(
                        child: CocktailGridItem(snapshot.data.elementAt(index),
                            selectedCategory: _categoryNotifier.value),
                        placeholder: Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: CustomColors.background),
                            child: Text(
                              snapshot.data.elementAt(index).drinkThumbUrl,
                              style:
                                  Theme.of(context).primaryTextTheme.bodyText1,
                            )),
                      ),
                    );
                  }, childCount: snapshot.data.length),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: CocktailGridItem.aspectRatio,
                      crossAxisSpacing: 6,
                      mainAxisSpacing: 6,
                      crossAxisCount: 2)),
            );
          }

          //todo set loader
          return SliverFillRemaining(child: const SizedBox());
        });
  }

  //variant 1
  // void _showPopupDetails(
  //     BuildContext context, CocktailDefinition cocktailDefinition) {
  //   Navigator.of(context).push(PageRouteBuilder(
  //       opaque: false,
  //       barrierDismissible: true,
  //       barrierLabel: 'l',
  //       barrierColor: Colors.black45,
  //       fullscreenDialog: true,
  //       pageBuilder: (context, a, sa) {
  //     return Center(child: CocktailDetailDialog(cocktailDefinition));
  //   }));
  // }

  //variant 2
  // void _showPopupDetails(
  //     BuildContext context, CocktailDefinition cocktailDefinition) {
  //   showGeneralDialog(
  //       context: context,
  //       barrierDismissible: true,
  //       barrierLabel: 'l',
  //       barrierColor: Colors.black45,
  //       pageBuilder: (context, a, sa) {
  //         return Center(child: CocktailDetailDialog(cocktailDefinition));
  //       });
  // }
  void _showPopupDetails(
      BuildContext context, CocktailDefinition cocktailDefinition) {}

  void _showDetailPage(
      BuildContext context, CocktailDefinition cocktailDefinition) {
    Navigator.of(context).push(CupertinoPageRoute(builder: (context) {
      return CocktailDetailPage(cocktailDefinition);
    }));
  }
}

class MarkWidget extends StatefulWidget {
  const MarkWidget({Key key, this.placeholder, @required this.child})
      : super(key: key);

  final Widget child;

  final Widget placeholder;

  @override
  _MarkWidgetState createState() => _MarkWidgetState();
}

class _MarkWidgetState extends State<MarkWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onLongPress: () {
          showCustomDialog(context);
        },
        child: widget.child);
  }

  void showCustomDialog(BuildContext context) {
    Navigator.of(context).push(CustomDialogRoute2(context, widget.placeholder,widget.child));
  }
}

class CustomDialogRoute2<T> extends PopupRoute<T> {
  final BuildContext itemContext;

  final Widget child;

  final Widget placeholder;

  CustomDialogRoute2(this.itemContext, this.placeholder, this.child) : super();
  //: super(filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2));

  @override
  Color get barrierColor => Colors.black45;

  @override
  bool get barrierDismissible => true;

  @override
  String get barrierLabel => 'close';

  @override
  Duration get transitionDuration => Duration(milliseconds: 500);


  bool isClosing = false;

  bool isTop = false;

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    final RenderBox item = itemContext.findRenderObject() as RenderBox;
    final position = item.localToGlobal(Offset.zero);
    final size = item.size;
    return Material(
      type: MaterialType.transparency,
      elevation: 2,
      child: SizedBox(
        width: size.width,
        height: size.height,
        child: AbsorbPointer(
          absorbing: true,
          child: child,
        ),
      ),
    );
  }

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    final RenderBox item = itemContext.findRenderObject() as RenderBox;
    final position = item.localToGlobal(Offset.zero);
    var messageTween =
    Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(animation);
    var messageTop = position.dy + item.size.height + 32;
    if (messageTop > MediaQuery.of(context).size.height - item.size.height) {
      isTop = true;
      messageTop = position.dy - 32;
      messageTween =
          Tween(begin: Offset(0, -2), end: Offset(0, -1)).animate(animation);
    }
    return BackdropFilter(
      filter: ImageFilter.blur(
          sigmaX: 3 * animation.value, sigmaY: 3 * animation.value),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: position.dy,
            left: position.dx,
            child: FadeTransition(
              opacity: animation,
              child: child,
            ),
          ),
          Positioned(
            top: messageTop,
            left: 32,
            right: 32,
            child: SlideTransition(
              position: messageTween,
              child: GestureDetector(
                onVerticalDragUpdate: (details) {
                  if (isClosing) return;
                  if (isTop) {
                    controller.value += details.primaryDelta / 56;
                  } else {
                    controller.value -= details.primaryDelta / 56;
                  }
                  if (controller.value < 0.3) {
                    isClosing = true;
                    controller
                        .animateTo(controller.lowerBound,
                        duration: Duration(seconds: 3))
                        .whenComplete(() {
                      navigator.finalizeRoute(this);
                    });
                  }
                },
                child: placeholder,
              ),
            ),
          )
        ],
      ),
    );
  }




}
