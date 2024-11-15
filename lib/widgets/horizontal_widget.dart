import 'package:flutter/material.dart';
import 'package:news_app/models/horizontal_model.dart';
import 'package:news_app/views/ctegory_view.dart';

class HorizontalWidget extends StatelessWidget {
  HorizontalWidget({super.key, required this.horizontal});

  HorizontalModel horizontal;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return CategoryView(
            category: horizontal.ctegoryName,
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: Container(
          height: 100,
          width: 170,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            image: DecorationImage(
              image: AssetImage(horizontal.image),
              fit: BoxFit.fill,
            ),
          ),
          child: Center(
            child: Text(
              horizontal.ctegoryName,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
