 import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsList extends StatelessWidget {
  const NewsList({super.key, required this.articlesModel});
  final ArticlesModel articlesModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child:  Image(
            image: NetworkImage(articlesModel.image?? 'https://tse3.mm.bing.net/th?id=OIP.cit_ADTeJEx7Ophjc07eagHaEK&pid=Api&P=0&h=220'),
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
         Text(
           articlesModel.title,
          style:const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: 6,
        ),
         Padding(
           padding: const EdgeInsets.only(bottom: 10.0),
           child: Text(
             articlesModel.subTitle??
            "This is sup title dosn,t haver any benifit so dont look to it",
            maxLines: 2,
            style:const TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
                   ),
         ),
      ],
    );
  }
}
