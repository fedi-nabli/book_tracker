import 'package:flutter/material.dart';

class PageNotFound extends StatelessWidget {
  const PageNotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '404',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'Page not found',
            style: Theme.of(context).textTheme.headline3,
          ),
          const SizedBox(
            height: 50,
          ),
          Image.network(
              'https://www.prestashop.com/sites/default/files/styles/blog_750x320/public/wysiwyg/http_code_404_error.jpg?itok=jg7KKK_c')
        ],
      ),
    );
  }
}
