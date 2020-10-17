import 'package:flutter/material.dart';

import '../builder_delegates.dart';

class PageViewSample extends StatefulWidget {
  @override
  _PageViewSampleState createState() => _PageViewSampleState();
}

class _PageViewSampleState extends State<PageViewSample> {
  final items = List.generate(15, (index) => index);

  final PageController _pageController = PageController(viewportFraction: 0.5);

  String page = 'page 0';


  @override
  void dispose() {
    // обязательно
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(page),
        leading: FlatButton(
            onPressed: () {
              _pageController.animateToPage(10,
                  duration: const Duration(seconds: 1), curve: Curves.linear);
            },
            textColor: Colors.white,
            child: Text('10')),
        actions: [
          FlatButton(
              textColor: Colors.white,
              onPressed: () {
                _pageController.previousPage(
                    duration: const Duration(seconds: 1), curve: Curves.linear);
              },
              child: Text('Back')),
          FlatButton(
              textColor: Colors.white,
              onPressed: () {
                _pageController.nextPage(
                    duration: const Duration(seconds: 1), curve: Curves.linear);
              },
              child: Text('Next'))
        ],
      ),
      body: _pageView(context),
    );
  }

  Widget _pageView(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      controller: _pageController,
      //physics: PageScrollPhysics(),
      //physics: NeverScrollableScrollPhysics(),
      pageSnapping: false,
      children: items.map((e) => _PageItem(index: e)).toList(),
      onPageChanged: (index) {
        setState(() {
          page = 'page ${index}';
        });
      },
    );
  }

  Widget _builderPageView(BuildContext context) {
    return PageView.builder(
        itemCount: 1,
        controller: _pageController,
        itemBuilder: (context, index) => _PageItem(index: index));
  }

  Widget _customPageView(BuildContext context) {
    return PageView.custom(
        childrenDelegate: cardSliverDelegate, controller: _pageController);
  }
}

class _PageItem extends StatefulWidget {
  const _PageItem({Key key, this.index}) : super(key: key);

  final int index;

  @override
  __PageItemState createState() => __PageItemState();
}

class __PageItemState extends State<_PageItem> {

  @override
  void dispose() {
    print('dispose:${widget.index}');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //print('build:${widget.index}');
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(child: Text('Page:${widget.index}')),
      ),
    );
  }
}
