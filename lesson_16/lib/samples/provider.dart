import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => 'Value',
      lazy: true,
      dispose: (context,value){},
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(),
          body: Center(
            child: GestureDetector(
              onTap: (){
                context.read<String>();
              },
              child: Consumer<String>(
                builder: (context,value,child){
                  return Text(value);
                },
              )
            ),
          ),
        );
      },
    );
  }
}
