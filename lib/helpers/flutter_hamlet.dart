// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

class Flutterhamlet {
  static void metaTags(String tags) {
    // TODO: Refactor code
    final html.Element? htmlVal = html.document.querySelector('head');
    htmlVal?.setInnerHtml(
      tags,
      validator: AllowAll(),
    );
  }
}

class AllowAll implements html.NodeValidator {
  @override
  bool allowsAttribute(
      html.Element element, String attributeName, String value) {
    return true;
  }

  @override
  bool allowsElement(html.Element element) {
    return true;
  }
}

final Flutterhamlet hamlet = Flutterhamlet();
