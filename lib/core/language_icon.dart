import 'package:flutter/material.dart';

import '../l10n/models/language_model.dart';

class LanguageDropdownWidget extends StatelessWidget {
  List<LanguageModel> languages = [
    LanguageModel(code: 'en', name: 'English', flag: '🇺🇸'),
    LanguageModel(code: 'ar', name: 'العربية', flag: '🇪🇬'),
  ];
  final String? chosenValue;
  final Function(LanguageModel?) onChanged;
  Color iconColor;
  LanguageDropdownWidget(
      {Key? key,
      required this.chosenValue,
      required this.onChanged,
      required this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (buildContext, boxConstraints) => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            child: Padding(
              padding: const EdgeInsets.only(top: 5, left: 1),
              child: DropdownButton<LanguageModel>(
                isExpanded: true,
                icon: SizedBox(
                  width: 25,
                  height: 25,
                  child: Icon(
                    Icons.language,
                    color: iconColor,
                  ),
                ),
                underline: const SizedBox(),
                items: languages.map<DropdownMenuItem<LanguageModel>>(
                  (LanguageModel value) {
                    return DropdownMenuItem<LanguageModel>(
                      value: value,
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            value.flag!,
                            style: const TextStyle(fontSize: 10),
                          ),
                          Text(value.name!),
                        ],
                      ),
                    );
                  },
                ).toList(),
                onChanged: onChanged,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
