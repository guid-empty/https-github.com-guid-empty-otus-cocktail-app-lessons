import 'package:cocktail/core/models.dart';

import 'package:flutter/material.dart';

import '../common/image-loading-builder.dart';

class CoctailPreview extends StatefulWidget {
  final CocktailDefinition coctail;

  CoctailPreview(this.coctail);

  @override
  _CoctailPreviewState createState() => _CoctailPreviewState();
}

class _CoctailPreviewState extends State<CoctailPreview>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.network(
              widget.coctail.drinkThumbUrl,
              fit: BoxFit.cover,
              loadingBuilder: imageLoadingBuilder,
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.black.withAlpha(140),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  widget.coctail.name,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 6,
                ),
                margin: const EdgeInsets.only(
                  top: 7,
                  left: 14,
                  bottom: 16,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xff15151C),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  'id: ${widget.coctail.id}',
                  maxLines: 1,
                  style: const TextStyle(fontSize: 10, color: Colors.white),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
