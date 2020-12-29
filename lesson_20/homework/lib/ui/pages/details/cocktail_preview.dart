import 'package:cocktail_app/ui/style/custom_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CocktailPreview extends StatelessWidget {
  final String imageUrl;

  CocktailPreview({this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 375 / 343,
          child: Image.network(imageUrl, fit: BoxFit.fill),
        ),
        Positioned(
          bottom: 0,
          child: AspectRatio(
            aspectRatio: 375 / 172,
            child: Container(
              color: Colors.transparent,
              foregroundDecoration: BoxDecoration(
                  gradient: const LinearGradient(
                      colors: [CustomColors.gradient_first, CustomColors.gradient_second],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
            ),
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                IconButton(
                  onPressed: () {
                    ///
                    /// TODO:
                    ///    - Склонировать соотвествующий github репозиторий с заготовкой проекта для этого урока (https://github.com/guid-empty/otus-cocktail-app-lessons)
                    ///    - Подключить соот-щий плагинг для вызова platform's share dialog в pubspec.yaml
                    ///    - Открыть класс экрана CocktailDetailPage -> виджет CocktailPreview с кнопкой Share
                    ///    - Внести изменения в код обработчика событий на нажатие кнопки Share (Поделиться) (в виджете CocktailPreview)
                    ///    - В обработчике события на Sharing сформировать текст с ссылкой на ImageThumb для описания коктейля
                    ///    - В обработчике события на Sharing выполнить обращение к классу плагина и пошарить описание коктейля
                    ///    - Убедиться, что сформированный текст уходит в канал #random в нашем канале Slack
                    ///
                    /// На усмотрение студента:
                    ///    - Можно использовать любые проверенные плагины из pub.dev
                    ///    - Можно выполнить любую декомпозицию методов экрана CocktailDetailPage (а также в виджете CocktailPreview) или кнопки Share для внесения изменений, требуемых для sharing
                  },
                  icon: Icon(
                    Icons.share,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
