import 'package:coderaayush/widgets/title_header.dart';
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
                TitleHeader(header: 'About Me'),
                SizedBox(height: 2),
                Align(
                  alignment: Alignment.topLeft,
                  child: SelectableText(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s. ',
                  ),
                ),
                SizedBox(height: 14),
                Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
                ),
                SizedBox(height: 14),
                ElevatedButton(onPressed: () {}, child: Text('Hire Me')),
                SizedBox(height: 24),
                TitleHeader(header: 'Skills'),
                SizedBox(height: 10),
                // TODO: Add circular Progress indicator for representation of skills
                // TODO: Migrate the package to sound null safety
                TitleHeader(header: 'Journey'),
                // TODO: Add the full timeline of my journey
              ],
            ),
          ),
        ),
      ),
    );
  }
}
