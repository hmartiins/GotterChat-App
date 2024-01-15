import 'package:flutter/widgets.dart';
import 'package:gotter_chat/app/commons/adapters/localizations/localizations_app.dart';

String intl(BuildContext context, String key) =>
    LocalizationsApp.of(context)?.translate(key) ?? '';
