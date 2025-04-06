import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/backend/schema/structs/index.dart';

import '/auth/base_auth_user_provider.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) => appStateNotifier.loggedIn ? () : (),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn ? () : (),
        ),
        FFRoute(
          name: StartWidget.routeName,
          path: StartWidget.routePath,
          builder: (context, params) => StartWidget(),
        ),
        FFRoute(
          name: SignUpWidget.routeName,
          path: SignUpWidget.routePath,
          builder: (context, params) => SignUpWidget(),
        ),
        FFRoute(
          name: PinCodeWidget.routeName,
          path: PinCodeWidget.routePath,
          builder: (context, params) => PinCodeWidget(),
        ),
        FFRoute(
          name: AccountEmailWidget.routeName,
          path: AccountEmailWidget.routePath,
          builder: (context, params) => AccountEmailWidget(),
        ),
        FFRoute(
          name: AccountPasswordWidget.routeName,
          path: AccountPasswordWidget.routePath,
          builder: (context, params) => AccountPasswordWidget(),
        ),
        FFRoute(
          name: AccountNameWidget.routeName,
          path: AccountNameWidget.routePath,
          builder: (context, params) => AccountNameWidget(),
        ),
        FFRoute(
          name: AcceptTermsWidget.routeName,
          path: AcceptTermsWidget.routePath,
          builder: (context, params) => AcceptTermsWidget(),
        ),
        FFRoute(
          name: UpdatesWidget.routeName,
          path: UpdatesWidget.routePath,
          builder: (context, params) => UpdatesWidget(),
        ),
        FFRoute(
          name: PermissionAccessWidget.routeName,
          path: PermissionAccessWidget.routePath,
          builder: (context, params) => PermissionAccessWidget(),
        ),
        FFRoute(
          name: PaymentMethodWidget.routeName,
          path: PaymentMethodWidget.routePath,
          builder: (context, params) => PaymentMethodWidget(),
        ),
        FFRoute(
          name: AddCreditCardWidget.routeName,
          path: AddCreditCardWidget.routePath,
          builder: (context, params) => AddCreditCardWidget(),
        ),
        FFRoute(
          name: AddAddressWidget.routeName,
          path: AddAddressWidget.routePath,
          builder: (context, params) => AddAddressWidget(),
        ),
        FFRoute(
          name: FindNearFoodWidget.routeName,
          path: FindNearFoodWidget.routePath,
          builder: (context, params) => FindNearFoodWidget(),
        ),
        FFRoute(
          name: DeliveryWidget.routeName,
          path: DeliveryWidget.routePath,
          builder: (context, params) => DeliveryWidget(),
        ),
        FFRoute(
          name: HomeWidget.routeName,
          path: HomeWidget.routePath,
          builder: (context, params) => HomeWidget(),
        ),
        FFRoute(
          name: FilterWidget.routeName,
          path: FilterWidget.routePath,
          builder: (context, params) => FilterWidget(),
        ),
        FFRoute(
          name: Search1Widget.routeName,
          path: Search1Widget.routePath,
          builder: (context, params) => Search1Widget(),
        ),
        FFRoute(
          name: SearchWidget.routeName,
          path: SearchWidget.routePath,
          builder: (context, params) => SearchWidget(),
        ),
        FFRoute(
          name: RestaurantsWidget.routeName,
          path: RestaurantsWidget.routePath,
          builder: (context, params) => RestaurantsWidget(),
        ),
        FFRoute(
          name: StoreInfoWidget.routeName,
          path: StoreInfoWidget.routePath,
          builder: (context, params) => StoreInfoWidget(),
        ),
        FFRoute(
          name: StoreWidget.routeName,
          path: StoreWidget.routePath,
          builder: (context, params) => StoreWidget(),
        ),
        FFRoute(
          name: OrderNameWidget.routeName,
          path: OrderNameWidget.routePath,
          builder: (context, params) => OrderNameWidget(),
        ),
        FFRoute(
          name: OrderNameDetailsWidget.routeName,
          path: OrderNameDetailsWidget.routePath,
          builder: (context, params) => OrderNameDetailsWidget(),
        ),
        FFRoute(
          name: CoverOrderWidget.routeName,
          path: CoverOrderWidget.routePath,
          builder: (context, params) => CoverOrderWidget(),
        ),
        FFRoute(
          name: OrderOptionsWidget.routeName,
          path: OrderOptionsWidget.routePath,
          builder: (context, params) => OrderOptionsWidget(),
        ),
        FFRoute(
          name: OrderOptionDetailsWidget.routeName,
          path: OrderOptionDetailsWidget.routePath,
          builder: (context, params) => OrderOptionDetailsWidget(),
        ),
        FFRoute(
          name: DraftWidget.routeName,
          path: DraftWidget.routePath,
          builder: (context, params) => DraftWidget(),
        ),
        FFRoute(
          name: BrowseWidget.routeName,
          path: BrowseWidget.routePath,
          builder: (context, params) => BrowseWidget(),
        ),
        FFRoute(
          name: BasketsWidget.routeName,
          path: BasketsWidget.routePath,
          builder: (context, params) => BasketsWidget(),
        ),
        FFRoute(
          name: BasketYourOrdersWidget.routeName,
          path: BasketYourOrdersWidget.routePath,
          builder: (context, params) => BasketYourOrdersWidget(),
        ),
        FFRoute(
          name: AccountWidget.routeName,
          path: AccountWidget.routePath,
          builder: (context, params) => AccountWidget(),
        ),
        FFRoute(
          name: AccountDetailsWidget.routeName,
          path: AccountDetailsWidget.routePath,
          builder: (context, params) => AccountDetailsWidget(),
        ),
        FFRoute(
          name: AccountEditWidget.routeName,
          path: AccountEditWidget.routePath,
          builder: (context, params) => AccountEditWidget(),
        ),
        FFRoute(
          name: UpdateFirstNameWidget.routeName,
          path: UpdateFirstNameWidget.routePath,
          builder: (context, params) => UpdateFirstNameWidget(),
        ),
        FFRoute(
          name: UpdatePhoneNumberWidget.routeName,
          path: UpdatePhoneNumberWidget.routePath,
          builder: (context, params) => UpdatePhoneNumberWidget(),
        ),
        FFRoute(
          name: UpdateEmailWidget.routeName,
          path: UpdateEmailWidget.routePath,
          builder: (context, params) => UpdateEmailWidget(),
        ),
        FFRoute(
          name: VerifyPasswordWidget.routeName,
          path: VerifyPasswordWidget.routePath,
          builder: (context, params) => VerifyPasswordWidget(),
        ),
        FFRoute(
          name: WalletWidget.routeName,
          path: WalletWidget.routePath,
          builder: (context, params) => WalletWidget(),
        ),
        FFRoute(
          name: VouchersWidget.routeName,
          path: VouchersWidget.routePath,
          builder: (context, params) => VouchersWidget(),
        ),
        FFRoute(
          name: AddCodeWidget.routeName,
          path: AddCodeWidget.routePath,
          builder: (context, params) => AddCodeWidget(),
        ),
        FFRoute(
          name: AccountPromotionsWidget.routeName,
          path: AccountPromotionsWidget.routePath,
          builder: (context, params) => AccountPromotionsWidget(),
        ),
        FFRoute(
          name: AboutAppWidget.routeName,
          path: AboutAppWidget.routePath,
          builder: (context, params) => AboutAppWidget(),
        ),
        FFRoute(
          name: UpdateTermsWidget.routeName,
          path: UpdateTermsWidget.routePath,
          builder: (context, params) => UpdateTermsWidget(),
        ),
        FFRoute(
          name: CourierProfileWidget.routeName,
          path: CourierProfileWidget.routePath,
          builder: (context, params) => CourierProfileWidget(),
        ),
        FFRoute(
          name: RateCourierWidget.routeName,
          path: RateCourierWidget.routePath,
          builder: (context, params) => RateCourierWidget(),
        ),
        FFRoute(
          name: ThanksForRateWidget.routeName,
          path: ThanksForRateWidget.routePath,
          builder: (context, params) => ThanksForRateWidget(),
        ),
        FFRoute(
          name: MessageWidget.routeName,
          path: MessageWidget.routePath,
          builder: (context, params) => MessageWidget(),
        ),
        FFRoute(
          name: CourierDetails1Widget.routeName,
          path: CourierDetails1Widget.routePath,
          builder: (context, params) => CourierDetails1Widget(),
        ),
        FFRoute(
          name: CourierDetailsWidget.routeName,
          path: CourierDetailsWidget.routePath,
          builder: (context, params) => CourierDetailsWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: FlutterFlowTheme.of(context).primary,
                  child: Center(
                    child: Image.asset(
                      'assets/images/Logo_Trans.png',
                      width: 160.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(
        hasTransition: true,
        transitionType: PageTransitionType.fade,
        duration: Duration(milliseconds: 250),
      );
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
