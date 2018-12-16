import 'package:flutter/material.dart' show runApp;
import 'package:scoped_model/scoped_model.dart' show ScopedModel;

import 'package:roman_candle/models/typedefs.dart' show AppState;
import 'package:roman_candle/widgets/app.dart' show App;

// Create state instance
final _appState = AppState();

// Creates an new app wrapped within a Model provider
final createApp = (AppState appState) => ScopedModel<AppState>(
      model: appState,
      child: App(),
    );

void main() => runApp(createApp(_appState));
