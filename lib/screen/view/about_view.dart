import 'package:flutter/material.dart';

class AboutView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
// This will add meta tags in head when the build context is triggered
    final width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: width > 1080 ? 0 : 15,
        ),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 780),
            child: Column(
              children: [
                SizedBox(height: 20),
                Text(
                  'About Me',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 40,
                  ),
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.topLeft,
                  child: SelectableText(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s. ',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(height: 14),
                Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'),
                SizedBox(height: 14),
                ElevatedButton(onPressed: () {}, child: Text('Get Width')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
