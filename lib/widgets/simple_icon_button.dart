import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SimpleIconButton extends StatelessWidget {
  const SimpleIconButton({
    Key? key,
    required this.scaffoldKey,
    AlignmentDirectional? alignment = AlignmentDirectional.center,
    Color? color = Colors.blue,
    FaIcon? faIcon = const FaIcon(
      FontAwesomeIcons.bars,
      color: Color.fromARGB(223, 57, 58, 58),
      size: 30,
    ),
  }) : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(-.95, 0.5),
      child: IconButton(
        icon: const FaIcon(
          FontAwesomeIcons.bars,
          color: Color.fromARGB(223, 57, 58, 58),
          size: 30,
        ),
        onPressed: () => scaffoldKey.currentState?.openDrawer(),
      ),
    );
  }
}
