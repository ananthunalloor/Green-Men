import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SimpleIconButton extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  final AlignmentDirectional alignment;
  final FaIcon faIcon;

  const SimpleIconButton({
    Key? key,
    required this.scaffoldKey,
    this.alignment = AlignmentDirectional.center,
    this.faIcon = const FaIcon(
      FontAwesomeIcons.bars,
      color: Color.fromARGB(223, 57, 58, 58),
      size: 30,
    ),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: IconButton(
        icon: faIcon,
        onPressed: () => scaffoldKey.currentState?.openDrawer(),
      ),
    );
  }
}
