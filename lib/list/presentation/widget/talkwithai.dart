import 'package:flutter/material.dart';
import 'package:nomabe/core/data/constants/strings.dart';
import 'package:nomabe/core/themes/nomabedimens.dart';
import 'package:nomabe/core/widgets/nomabebutton.dart';

class TalkWithAiButton extends StatelessWidget {
  const TalkWithAiButton({
    required this.onPressed,
    super.key,
  });

  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: NomabeDimens.nomabe_med_size,
      ),
      child: SizedBox(
        width: double.infinity,
        child: NomabePrimaryButton(
          onPressed,
          title: CoreStrings.askAi,
        ),
      ),
    );
  }
}
