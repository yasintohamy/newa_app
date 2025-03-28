import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/result_model.dart';
import 'package:news_app/screens/news_details.dart';

class Card2 extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  ResultModel resultModel;
  Card2({required this.resultModel, super.key});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => NewsDetails(link: resultModel.link),
          ),
        );
      },
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: AspectRatio(
              aspectRatio: 4 / 3,
              child: CachedNetworkImage(
                imageUrl:
                    resultModel.image ?? 'https://via.placeholder.com/200',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
                placeholder:
                    (context, url) =>
                        Center(child: CircularProgressIndicator()),
                errorWidget:
                    (context, url, error) => AspectRatio(
                      aspectRatio: 4 / 3,
                      child: Image.asset(
                        'assets/free-global-news-icon-4305-thumb.png',
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
              ),
            ),
          ),

          SizedBox(height: 12),

          Text(
            resultModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,

              fontSize: 20,
            ),
          ),
          SizedBox(height: 8),
          Text(
            resultModel.subTitle ?? "",
            maxLines: 2,
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
