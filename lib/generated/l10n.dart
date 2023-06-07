// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `An error occurred while processing your request.`
  String get anErrorOccurred {
    return Intl.message(
      'An error occurred while processing your request.',
      name: 'anErrorOccurred',
      desc: '',
      args: [],
    );
  }

  /// `Kindly try again.`
  String get kindlyTryAgain {
    return Intl.message(
      'Kindly try again.',
      name: 'kindlyTryAgain',
      desc: '',
      args: [],
    );
  }

  /// `Request cancelled.`
  String get requestCancelled {
    return Intl.message(
      'Request cancelled.',
      name: 'requestCancelled',
      desc: '',
      args: [],
    );
  }

  /// `No internet connection.`
  String get noInternetConnection {
    return Intl.message(
      'No internet connection.',
      name: 'noInternetConnection',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Voucher`
  String get voucher {
    return Intl.message(
      'Voucher',
      name: 'voucher',
      desc: '',
      args: [],
    );
  }

  /// `Wallet`
  String get wallet {
    return Intl.message(
      'Wallet',
      name: 'wallet',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Best Sale Product`
  String get bestSaleProducts {
    return Intl.message(
      'Best Sale Product',
      name: 'bestSaleProducts',
      desc: '',
      args: [],
    );
  }

  /// `See more`
  String get seeMore {
    return Intl.message(
      'See more',
      name: 'seeMore',
      desc: '',
      args: [],
    );
  }

  /// `Search...`
  String get search {
    return Intl.message(
      'Search...',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Total price`
  String get totalPrice {
    return Intl.message(
      'Total price',
      name: 'totalPrice',
      desc: '',
      args: [],
    );
  }

  /// `Buy now`
  String get buyNow {
    return Intl.message(
      'Buy now',
      name: 'buyNow',
      desc: '',
      args: [],
    );
  }

  /// `Ratings`
  String get ratings {
    return Intl.message(
      'Ratings',
      name: 'ratings',
      desc: '',
      args: [],
    );
  }

  /// `Reviews`
  String get reviews {
    return Intl.message(
      'Reviews',
      name: 'reviews',
      desc: '',
      args: [],
    );
  }

  /// `Sold`
  String get sold {
    return Intl.message(
      'Sold',
      name: 'sold',
      desc: '',
      args: [],
    );
  }

  /// `About Item`
  String get aboutItem {
    return Intl.message(
      'About Item',
      name: 'aboutItem',
      desc: '',
      args: [],
    );
  }

  /// `Brand`
  String get brand {
    return Intl.message(
      'Brand',
      name: 'brand',
      desc: '',
      args: [],
    );
  }

  /// `Condition`
  String get condition {
    return Intl.message(
      'Condition',
      name: 'condition',
      desc: '',
      args: [],
    );
  }

  /// `Color`
  String get color {
    return Intl.message(
      'Color',
      name: 'color',
      desc: '',
      args: [],
    );
  }

  /// `Heavy`
  String get heavy {
    return Intl.message(
      'Heavy',
      name: 'heavy',
      desc: '',
      args: [],
    );
  }

  /// `Material`
  String get material {
    return Intl.message(
      'Material',
      name: 'material',
      desc: '',
      args: [],
    );
  }

  /// `Category`
  String get category {
    return Intl.message(
      'Category',
      name: 'category',
      desc: '',
      args: [],
    );
  }

  /// `Description:`
  String get description {
    return Intl.message(
      'Description:',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `Chat us if there is anything you need to ask about the product `
  String get chatWithUs {
    return Intl.message(
      'Chat us if there is anything you need to ask about the product ',
      name: 'chatWithUs',
      desc: '',
      args: [],
    );
  }

  /// `See less`
  String get seeLess {
    return Intl.message(
      'See less',
      name: 'seeLess',
      desc: '',
      args: [],
    );
  }

  /// `Shippings Information:`
  String get shippingInformation {
    return Intl.message(
      'Shippings Information:',
      name: 'shippingInformation',
      desc: '',
      args: [],
    );
  }

  /// `Delivery`
  String get delivery {
    return Intl.message(
      'Delivery',
      name: 'delivery',
      desc: '',
      args: [],
    );
  }

  /// `Shipping`
  String get shipping {
    return Intl.message(
      'Shipping',
      name: 'shipping',
      desc: '',
      args: [],
    );
  }

  /// `Arrive`
  String get arrive {
    return Intl.message(
      'Arrive',
      name: 'arrive',
      desc: '',
      args: [],
    );
  }

  /// `Seller Information:`
  String get sellerInformation {
    return Intl.message(
      'Seller Information:',
      name: 'sellerInformation',
      desc: '',
      args: [],
    );
  }

  /// `Active {duration}`
  String active(Object duration) {
    return Intl.message(
      'Active $duration',
      name: 'active',
      desc: '',
      args: [duration],
    );
  }

  /// `{rate} Positive Feedback`
  String feedbackRate(Object rate) {
    return Intl.message(
      '$rate Positive Feedback',
      name: 'feedbackRate',
      desc: '',
      args: [rate],
    );
  }

  /// `Visit Store`
  String get visitStore {
    return Intl.message(
      'Visit Store',
      name: 'visitStore',
      desc: '',
      args: [],
    );
  }

  /// `Reviews & Ratings`
  String get ratingsAndReviews {
    return Intl.message(
      'Reviews & Ratings',
      name: 'ratingsAndReviews',
      desc: '',
      args: [],
    );
  }

  /// `Reviews with images & videos`
  String get reviewWithImages {
    return Intl.message(
      'Reviews with images & videos',
      name: 'reviewWithImages',
      desc: '',
      args: [],
    );
  }

  /// `Top Reviews`
  String get topReviews {
    return Intl.message(
      'Top Reviews',
      name: 'topReviews',
      desc: '',
      args: [],
    );
  }

  /// `Showing {count} of {reviewCount}`
  String showingReviews(Object count, Object reviewCount) {
    return Intl.message(
      'Showing $count of $reviewCount',
      name: 'showingReviews',
      desc: '',
      args: [count, reviewCount],
    );
  }

  /// `Helpful?`
  String get helpful {
    return Intl.message(
      'Helpful?',
      name: 'helpful',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
