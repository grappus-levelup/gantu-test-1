import 'custom_inspector.dart';
import 'dart:html' as html;
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'core/app_export.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
var backendURL = "https://levelsap1948back.builtwithrocket.new/log-error";

void main() {
  FlutterError.onError = (details) {
    _sendOverflowError(details);
  };
  WidgetsFlutterBinding.ensureInitialized();
  Future.wait([
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]),
  ]).then((value) {
    PrefUtils().init();
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          title: 'level_s_application',
          builder: (context, child) {
            return CustomWidgetInspector(
            // isInspectorEnabled: isInspectionRunning == 'true',
            child: MediaQuery(
              data: MediaQuery.of(
                context,
              ).copyWith(textScaler: TextScaler.linear(1.0)),
              child: child!,
            ) // Preserve original MediaQuery content
        );
          },
          navigatorKey: NavigatorService.navigatorKey,
          debugShowCheckedModeBanner: false,
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: [Locale('en', '')],
          initialRoute: AppRoutes.initialRoute,
          routes: AppRoutes.routes,
        );
      },
    );
  }
}


    void _sendOverflowError(FlutterErrorDetails details) {
      try {
        final errorMessage = details.exception.toString();
        final exceptionType = details.exception.runtimeType.toString();

        String location = 'Unknown';
        final locationMatch = RegExp(r'file:///.*\.dart').firstMatch(details.toString());
        if (locationMatch != null) {
          location = locationMatch.group(0)?.replaceAll("file://", '') ?? 'Unknown';
        }
        String errorType = "RUNTIME_ERROR";
        if(errorMessage.contains('overflowed by') || errorMessage.contains('RenderFlex overflowed')) {
          errorType = 'OVERFLOW_ERROR';
        }
        final payload = {
          'errorType': errorType,
          'exceptionType': exceptionType,
          'message': errorMessage,
          'location': location,
          'timestamp': DateTime.now().toIso8601String(),
        };
        final jsonData = jsonEncode(payload);
        final request = html.HttpRequest();
        request.open('POST', backendURL, async: true);
        request.setRequestHeader('Content-Type', 'application/json');
        request.onReadyStateChange.listen((_) {
          if (request.readyState == html.HttpRequest.DONE) {
            if (request.status == 200) {
              print('Successfully reported error');
            } else {
              print('Error reporting overflow');
            }
          }
        });
        request.onError.listen((event) {
          print('Failed to send overflow report');
        });
        request.send(jsonData);
      } catch (e) {
        print('Exception while reporting overflow error: $e');
      }
    }
    