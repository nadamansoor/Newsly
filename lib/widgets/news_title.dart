import 'package:flutter/material.dart';

class NewsTitle extends StatelessWidget {
  const NewsTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(6),
          child: Image.network('https://images.unsplash.com/photo-1503676260728-1c00da094a0b',
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),

        SizedBox(
          height: 12,
        ),

        Text(
          'Large title cjsdbss dddd cujdcbsd;ucbds;crihocbncidch',
          maxLines: 2,
          //if you have no space add ... = ellispis
          overflow: TextOverflow.ellipsis,

          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        
        SizedBox(
          height: 8,
        ),

        Text(
          'ugdhddk jfguidgc cdgduic  hddkj  ',
          maxLines: 2,
          style: TextStyle(
            fontSize: 13,
            color: Colors.grey,

          ),
        )
      ],
    );
  }
}