import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            maxRadius: 70,
          ),
          SizedBox(height: 2),
          Text(
            'Aayush Bhattarai',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline5?.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                ),
          ),
          Text(
            'Something Random',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.subtitle2?.copyWith(
                  fontWeight: FontWeight.w100,
                  fontSize: 16,
                ),
          ),
          SizedBox(height: 8),
          /// TODO: Change in design
          Center(
            child: OutlinedButton(
              child: Text('Download Resume'),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
