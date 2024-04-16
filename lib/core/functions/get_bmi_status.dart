import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

String getBMIStatus(double bmi, BuildContext context) {
  if (bmi < 18.5 && bmi > 0) {
    return AppLocalizations.of(context)!.conditionOne;
  } else if (bmi >= 18.5 && bmi <= 24.9) {
    return AppLocalizations.of(context)!.conditionTwo;
  } else if (bmi >= 25 && bmi <= 29.9) {
    return AppLocalizations.of(context)!.conditionThree;
  } else if (bmi >= 30 && bmi <= 34.9) {
    return AppLocalizations.of(context)!.conditionFour;
  } else if (bmi >= 35) {
    return AppLocalizations.of(context)!.conditionFive;
  } else {
    return AppLocalizations.of(context)!.conditionSix;
  }
}
