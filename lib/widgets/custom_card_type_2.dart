import 'package:componentes_flutter/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({super.key, required this.url, this.name});

  final String url;
  final String? name;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      elevation: 30,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(url),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            fit: BoxFit.cover,
            height: 230,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if (name != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text(name!),
            )
        ],
      ),
    );
  }
}
