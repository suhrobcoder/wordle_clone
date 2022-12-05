import 'package:flutter/material.dart';
import 'package:translit_uz/translit_uz.dart';

const uzLatin = Locale('uz');
const uzCyrl = Locale.fromSubtags(
    countryCode: 'UZ', languageCode: 'uz', scriptCode: 'Cyrl');

const localizations = [uzLatin, uzCyrl];

final translit = Translit();
