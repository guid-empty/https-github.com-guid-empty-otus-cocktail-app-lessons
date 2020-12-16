//todo
// Отобразить страницу CocktailDetailsScreen из домашнего задания с урока 4
// Получить Cocktail можно из  AsyncCocktailRepository().fetchCocktailDetails(id)

import 'package:flutter/material.dart';

import '../core/models.dart';
import '../ui/favorite_painter.dart';

class CocktailDetailPage extends StatefulWidget {
  const CocktailDetailPage({
    this.cocktail,
    Key key,
  }) : super(key: key);

  final Cocktail cocktail;

  @override
  _CocktailDetailPageState createState() => _CocktailDetailPageState();
}

class _CocktailDetailPageState extends State<CocktailDetailPage>
    with SingleTickerProviderStateMixin {
  bool isSelected = false;
  AnimationController controller;
  Animation<double> sizeAnimation;
  Animation<Color> colorAnimation;
  Animation<double> radiusAnimation;
  Animation<Color> colorRingAnimation;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    sizeAnimation = Tween(begin: 20.0, end: 23.0)
        .animate(CurvedAnimation(parent: controller, curve: Curves.bounceOut));
    colorAnimation = ColorTween(
      begin: Colors.white24,
      end: Colors.red,
    ).animate(controller);
    colorRingAnimation = ColorTween(
      begin: Colors.yellow[900],
      end: Color(0xFF1A1927),
    ).animate(controller);
    radiusAnimation = Tween(begin: 10.0, end: 30.0)
        .animate(CurvedAnimation(parent: controller, curve: Curves.bounceOut));
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            _buildImageFrame(),
            _buildDescriptionFrame(),
            _buildIngridientsFrame(),
            _buildInstructionFrame(),
            _buildStarsFrame(),
          ],
        ),
      ),
    );
  }

  Widget _buildImageFrame() {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: const LinearGradient(
              colors: [Colors.black54, Colors.black],
              begin: Alignment.center,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Opacity(
            opacity: 0.8,
            child: Image(
              image: NetworkImage(widget.cocktail.drinkThumbUrl),
            ),
          ),
        ),
        Positioned(
          top: 54,
          left: 24,
          child: GestureDetector(
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),
        const Positioned(
          top: 54,
          right: 24,
          child: const Icon(
            Icons.launch_sharp,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget _buildDescriptionFrame() {
    return Container(
      color: const Color(0xFF1A1927),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(32, 32, 32, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    widget.cocktail.name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                _buildFavoriteButton(),
              ],
            ),
            const SpaceH20(),
            Text(
              'id:${widget.cocktail.id}',
              style: const TextStyle(
                color: const Color(0xFF848396),
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SpaceH25(),
            _buildValue('Категория коктейля'),
            const SpaceH20(),
            _buildTitle(widget.cocktail.category.value),
            const SpaceH20(),
            _buildValue('Тип коктейля'),
            const SpaceH20(),
            _buildTitle(widget.cocktail.cocktailType.value),
            const SpaceH20(),
            _buildValue('Тип стекла'),
            const SpaceH20(),
            _buildTitle(widget.cocktail.glassType.value),
            const SpaceH20(),
          ],
        ),
      ),
    );
  }

  Widget _buildFavoriteButton() {
    return GestureDetector(
      child: Stack(
        alignment: Alignment.center,
        children: [
          HeartAnimatedBuilder(
              controller: controller,
              isSelected: isSelected,
              sizeAnimation: sizeAnimation,
              colorAnimation: colorAnimation),
          RingAnimatedBuilder(
              controller: controller,
              isSelected: isSelected,
              colorRingAnimation: colorRingAnimation,
              radiusAnimation: radiusAnimation),
        ],
      ),
      onTap: () {
        setState(() {
          isSelected = !isSelected;
          isSelected ? controller.forward() : controller.reverse();
        });
      },
    );
  }

  Text _buildValue(String textvalue) {
    return Text(
      textvalue,
      style: const TextStyle(
        color: const Color(0xFFEAEAEA),
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
    );
  }

  Container _buildTitle(String title) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 6, 16, 6),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.w400,
        ),
      ),
      decoration: BoxDecoration(
        color: const Color(0xFF15151C),
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }

  Widget _buildIngridientsFrame() {
    return Container(
      color: const Color(0xFF000000),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(32, 22, 32, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Ингридиенты:',
                style: const TextStyle(
                  color: const Color(0xFFB1AFC6),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SpaceH20(),
            Column(
              children: _buildIngridientsRows(),
            ),
            const SpaceH20(),
          ],
        ),
      ),
    );
  }

  Widget _buildInstructionFrame() {
    return Container(
      color: const Color(0xFF201F2C),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(32, 22, 15, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Инструкция для приготовления:',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SpaceH20(),
            Column(
              children: [
                Text(
                  widget.cocktail.instruction,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const SpaceH20(),
          ],
        ),
      ),
    );
  }

  Widget _buildStarsFrame() {
    return Container(
      color: const Color(0xFF1A1927),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(32, 22, 32, 22),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _buildStarsIcons(),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildStarsIcons() {
    List<Widget> listWhitestars = List.generate(
      3,
      (index) => Flexible(
        child: Container(
          padding: const EdgeInsets.fromLTRB(7, 7, 7, 7),
          child: const Icon(
            Icons.star,
            color: Colors.white,
            size: 32,
          ),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: const Color(0xFF2A293A),
          ),
        ),
      ),
    );
    List<Widget> listBlackstars = List.generate(
      2,
      (index) => Flexible(
        child: Container(
          padding: const EdgeInsets.fromLTRB(7, 7, 7, 7),
          child: const Icon(
            Icons.star,
            color: const Color(0xFF1A1927),
            size: 32,
          ),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: const Color(0xFF2A293A),
          ),
        ),
      ),
    );

    return listWhitestars + listBlackstars;
  }

  List<Widget> _buildIngridientsRows() {
    List<Row> list = [];

    for (var n in widget.cocktail.ingredients) {
      list.add(
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Text(
                n.ingredientName,
                style: const TextStyle(
                  color: const Color(0xFFFFFFFF),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            SpaceH25(),
            Flexible(
              child: Text(
                n.measure,
                style: const TextStyle(
                  color: const Color(0xFFFFFFFF),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      );
    }
    return list;
  }
}

class RingAnimatedBuilder extends StatelessWidget {
  const RingAnimatedBuilder({
    Key key,
    @required this.controller,
    @required this.isSelected,
    @required this.colorRingAnimation,
    @required this.radiusAnimation,
  }) : super(key: key);

  final AnimationController controller;
  final bool isSelected;
  final Animation<Color> colorRingAnimation;
  final Animation<double> radiusAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Opacity(
          opacity: isSelected ? 1.0 : 0.0,
          child: Ring(
            ringColor: colorRingAnimation.value,
            ringRadius: radiusAnimation.value,
          ),
        );
      },
    );
  }
}

class HeartAnimatedBuilder extends StatelessWidget {
  const HeartAnimatedBuilder({
    Key key,
    @required this.controller,
    @required this.isSelected,
    @required this.sizeAnimation,
    @required this.colorAnimation,
  }) : super(key: key);

  final AnimationController controller;
  final bool isSelected;
  final Animation<double> sizeAnimation;
  final Animation<Color> colorAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Container(
          height: isSelected ? sizeAnimation.value : 20,
          width: isSelected ? sizeAnimation.value : 20,
          child: Heart(
            heartColor: colorAnimation.value,
          ),
        );
      },
    );
  }
}

class SpaceH20 extends StatelessWidget {
  const SpaceH20({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 20);
  }
}

class SpaceH25 extends StatelessWidget {
  const SpaceH25({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 25);
  }
}
