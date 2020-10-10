import 'package:flutter/material.dart';
import 'package:homework/models/models.dart';

class CocktailDetailPage extends StatefulWidget {
  const CocktailDetailPage(
    this.cocktail,
    {Key key,}
  ) : super(key: key);

  final Cocktail cocktail;

  @override
  _CocktailDetailPageState createState() => _CocktailDetailPageState();
}

class _CocktailDetailPageState extends State<CocktailDetailPage> {
  ScrollController _scrollController;

  @override
  Widget build(BuildContext context) {

    String _imgUrl = 'https://s3-alpha-sig.figma.com/img/c9cf/56ae/17088867418eb6b627365b0bf09329d0?Expires=1603065600&Signature=f-nOWjdxhfCeFDvbhSYkt2vo8blgRSNzlC5HP36wgOcZVOaH7SAGcj95MJ~71qAzLLkpKvNe3xQvkPGIhzK7B28wU1gWMPLHmkUX5M6zxXH1VylDyxtdDs9RzvJ8a67hwIzxSXGm-ni4u6LHmBe4Df7mKfb~KTmvgAFXEFspKwrMeBPxNOt2vsP9H9nMpzi5jeOB2z9uFqzqkXny4FobHLxpPeZ0AYx1sAQgEnxnrMOdYtg8~0sr9xJJHRvBuh07r~iQU9Iaq2rjmr1yzifsOZAPbQBoRnsBRLW9iMbipob6cXcrEO9b-IamQr7msf866f6Iq-f~~nMYlOsJHH~Aog__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA';

    /// флексибл аппбар с градиентом
    FlexibleSpaceBar _appBar = FlexibleSpaceBar(
      background: ShaderMask(
        shaderCallback: (Rect bounds) {
          //linear-gradient(178.07deg, rgba(14, 13, 19, 0) 44.38%, #0E0D13 94.35%),
          return LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Color(0x000E0D13),
              Color(0xFF0E0D13),
            ],
            stops: [
              0.0,
              0.43
            ],
          ).createShader(Rect.fromLTRB(0, 0, bounds.width, bounds.height));
        },
        blendMode: BlendMode.dstIn,
        child: Image.network(_imgUrl,
          fit: BoxFit.cover,
          loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent loadingProgress) {
            if (loadingProgress == null) {
              return child;
            }

            return Center(
              child: CircularProgressIndicator(
                value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes
                  : null,
              ),
            );
          },
        ),
      ),
      stretchModes: <StretchMode>[
        StretchMode.zoomBackground,
        StretchMode.blurBackground,
        StretchMode.fadeTitle,
      ],
    );

    return Scaffold(
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          double _maxHeight = 390.0;
          return <Widget>[
            SliverAppBar(
              stretch: true,
              stretchTriggerOffset: 0.1,
              elevation: 0.0,
              pinned: true,
              snap: false,
              expandedHeight: _maxHeight - MediaQuery.of(context).padding.top,
              flexibleSpace: _appBar,
              forceElevated: innerBoxIsScrolled,
              onStretchTrigger: () => null,
              leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => null,
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.open_in_new, color: Colors.white,),
                  onPressed: () => null
                ),
              ],
            ),
          ];
        },
        body: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: ListView(
            children: [
              _CocktailInfoWidget(cocktail: widget.cocktail,),
              _CocktailCompositionWidget(cocktail: widget.cocktail,),
              _CocktailInstructionWidget(instruction: widget.cocktail.instruction),
              _CocktailRatingWidget(),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}

class _CocktailInfoWidget extends StatelessWidget {
  final Cocktail cocktail;

  _CocktailInfoWidget({@required this.cocktail});

  @override
  Widget build(BuildContext context) {

    /// мапа для генерации списка информации о коктейле
    final Map<String, String> _cocktailInfoMap = {
      'Категория коктейля': cocktail.category.value ?? '',
      'Тип коктейля': cocktail.cocktailType.value ?? '',
      'Тип стекла': cocktail.glassType.value ?? '',
    };

    /// заголовок
    Widget _cocktailInfoTitle = Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(cocktail.name ?? '',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              IconButton(
                icon: Icon(Icons.favorite),
                onPressed: () => null,
              ),
            ],
          ),
          Container(
            child: Text('id:${cocktail.id}',
              style: TextStyle(
                color: Color(0xFF848396),
                fontWeight: FontWeight.w400,
                fontSize: 13.0,
              ),
            )
          ),
        ],
      ),
    );

    /// билдер элемента инфы о коктейле
    Widget _cocktailInfoItem({
      String title = '',
      String body = '',
    }) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(title),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 18.0),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
              decoration: BoxDecoration(
                color: Color(0xFF15151C),
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
              ),
              child: Text(body,
                style: TextStyle(
                  fontSize: 15.0
                ),
              ),
            ),
          ),
        ],
      );

    return Container(
      padding: const EdgeInsets.only(top: 32.0, left: 32.0, right: 32.0),
      color: Color(0xFF1A1927),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _cocktailInfoTitle,
          ..._cocktailInfoMap.entries.map((el) =>
            _cocktailInfoItem(title: el.key, body: el.value)),
        ],
      ),
    );
  }
}

class _CocktailCompositionWidget extends StatelessWidget {
  final Cocktail cocktail;

  _CocktailCompositionWidget({@required this.cocktail});

  @override
  Widget build(BuildContext context) {
    /// заголовок состава
    Widget _compositionTitle = Container(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Text('Ингридиенты:',
        style: TextStyle(
          fontSize: 16.0
        ),
      ),
    );

    /// билдер контейнера с ингридиентами
    Widget _compositionItem({@required IngredientDefinition composition}) =>
      Container(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(composition.ingredientName ?? '',
              style: TextStyle(
                decoration: TextDecoration.underline
              ),
            ),
            Text(composition.measure ?? ''),
          ],
        ),
      );

    return Container(
      color: Colors.black,
      padding: EdgeInsets.only(right: 36.0, left: 32.0, top: 24, bottom: 16.0),
      child: Column(
        children: [
          _compositionTitle,
          ...cocktail.ingredients.map((el) => _compositionItem(composition: el))
        ],
      ),
    );
  }
}

class _CocktailInstructionWidget extends StatelessWidget {
  final String instruction;

  _CocktailInstructionWidget({@required this.instruction});

  @override
  Widget build(BuildContext context) {
    List<String> paragraph = instruction.replaceAll('- ', '').split('\n');

    /// билдер контейнера с абзацами текста
    Widget _instructionItem({@required String text}) =>
      Container(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: Stack(
          overflow: Overflow.visible,
          children: <Widget>[
            Positioned(
              top: 0,
              left: -8,
              child: Text('•'),
            ),
            Text(text ?? ''),
          ]
        ),
      );

    return Container(
      color: Color(0xFF201F2C),
      padding: const EdgeInsets.only(top: 24.0, bottom: 24.0, left: 32.0, right: 21.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 24.0),
            child: Text('Инстукция для приготовления'),
          ),
          ...paragraph.map((el) => _instructionItem(text: el))
        ],
      ),
    );
  }
}

class _CocktailRatingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget _starButton(int index) =>
      Container(
        decoration: BoxDecoration(
          color: Color(0xFF2A293A),
          borderRadius: BorderRadius.all(Radius.circular(360.0))
        ),
        child: IconButton(
          iconSize: 40,
          color: index > 2 ? Color(0xFF1A1927) : Colors.white,
          icon: Icon(
            Icons.star,
          ),
          onPressed: () => null,
        ),
      );

    List<Widget> _buttons = List.generate(5, (index) => _starButton(index));

    return Container(
      color: Color(0xFF1A1927),
      padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 35.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: _buttons,
      ),
    );
  }
}





