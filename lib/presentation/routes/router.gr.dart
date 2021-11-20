// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'dart:io' as _i7;

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../screens/home_screen.dart' as _i5;
import '../screens/image_preview_screen.dart' as _i6;
import '../screens/intro_screen.dart' as _i4;
import '../screens/splash_screen.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.SplashScreen();
        }),
    IntroScreenRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<IntroScreenRouteArgs>(
              orElse: () => const IntroScreenRouteArgs());
          return _i4.IntroScreen(key: args.key);
        }),
    HomeScreenRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i5.HomeScreen();
        }),
    ImagePreviewScreenRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ImagePreviewScreenRouteArgs>();
          return _i6.ImagePreviewScreen(
              key: args.key,
              pickedImage: args.pickedImage,
              testString: args.testString);
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashScreenRoute.name, path: '/'),
        _i1.RouteConfig(IntroScreenRoute.name, path: '/intro-screen'),
        _i1.RouteConfig(HomeScreenRoute.name, path: '/home-screen'),
        _i1.RouteConfig(ImagePreviewScreenRoute.name,
            path: '/image-preview-screen')
      ];
}

class SplashScreenRoute extends _i1.PageRouteInfo<void> {
  const SplashScreenRoute() : super(name, path: '/');

  static const String name = 'SplashScreenRoute';
}

class IntroScreenRoute extends _i1.PageRouteInfo<IntroScreenRouteArgs> {
  IntroScreenRoute({_i2.Key? key})
      : super(name,
            path: '/intro-screen', args: IntroScreenRouteArgs(key: key));

  static const String name = 'IntroScreenRoute';
}

class IntroScreenRouteArgs {
  const IntroScreenRouteArgs({this.key});

  final _i2.Key? key;
}

class HomeScreenRoute extends _i1.PageRouteInfo<void> {
  const HomeScreenRoute() : super(name, path: '/home-screen');

  static const String name = 'HomeScreenRoute';
}

class ImagePreviewScreenRoute
    extends _i1.PageRouteInfo<ImagePreviewScreenRouteArgs> {
  ImagePreviewScreenRoute(
      {_i2.Key? key, required _i7.File? pickedImage, String? testString})
      : super(name,
            path: '/image-preview-screen',
            args: ImagePreviewScreenRouteArgs(
                key: key, pickedImage: pickedImage, testString: testString));

  static const String name = 'ImagePreviewScreenRoute';
}

class ImagePreviewScreenRouteArgs {
  const ImagePreviewScreenRouteArgs(
      {this.key, required this.pickedImage, this.testString});

  final _i2.Key? key;

  final _i7.File? pickedImage;

  final String? testString;
}
