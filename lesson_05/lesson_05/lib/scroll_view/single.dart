import 'package:flutter/material.dart';



class SingleChildScrollViewSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final header = Image.network(
      'https://wallbox.ru/resize/800x480/wallpapers/main/201532/2a6e219479501f5.jpg',
      // height: 1000,
      // fit: BoxFit.fill,
    );

    final body = Column(children: [
      Text('Title', style: Theme.of(context).textTheme.headline6),
      ...List.generate(
          10, (index) => _buildPropertyTile('Key$index', 'Value$index'))
    ]);

    final footer = RaisedButton(
      onPressed: null,
      padding: const EdgeInsets.all(16),
      child: Text('Button'),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('SingleChildScrollView'),
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          children: [
            header,
            body,
            footer,
            _Footer(),
          ],
        ),
      ),
    );
  }

  Widget _buildPropertyTile(String key, String value) {
    return ListTile(
      title: Text(key),
      trailing: Text(value),
    );
  }
}

class _Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('build _Footer');
    return Container(
      height: 100,
      color: Colors.lightBlue,
      child: Text('Footer'),
    );
  }
}
