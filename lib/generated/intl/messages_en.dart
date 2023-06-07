// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(duration) => "Active ${duration}";

  static String m1(rate) => "${rate} Positive Feedback";

  static String m2(count, reviewCount) => "Showing ${count} of ${reviewCount}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aboutItem": MessageLookupByLibrary.simpleMessage("About Item"),
        "active": m0,
        "anErrorOccurred": MessageLookupByLibrary.simpleMessage(
            "An error occurred while processing your request."),
        "arrive": MessageLookupByLibrary.simpleMessage("Arrive"),
        "bestSaleProducts":
            MessageLookupByLibrary.simpleMessage("Best Sale Product"),
        "brand": MessageLookupByLibrary.simpleMessage("Brand"),
        "buyNow": MessageLookupByLibrary.simpleMessage("Buy now"),
        "category": MessageLookupByLibrary.simpleMessage("Category"),
        "chatWithUs": MessageLookupByLibrary.simpleMessage(
            "Chat us if there is anything you need to ask about the product "),
        "color": MessageLookupByLibrary.simpleMessage("Color"),
        "condition": MessageLookupByLibrary.simpleMessage("Condition"),
        "delivery": MessageLookupByLibrary.simpleMessage("Delivery"),
        "description": MessageLookupByLibrary.simpleMessage("Description:"),
        "feedbackRate": m1,
        "heavy": MessageLookupByLibrary.simpleMessage("Heavy"),
        "helpful": MessageLookupByLibrary.simpleMessage("Helpful?"),
        "home": MessageLookupByLibrary.simpleMessage("Home"),
        "kindlyTryAgain":
            MessageLookupByLibrary.simpleMessage("Kindly try again."),
        "material": MessageLookupByLibrary.simpleMessage("Material"),
        "noInternetConnection":
            MessageLookupByLibrary.simpleMessage("No internet connection."),
        "ratings": MessageLookupByLibrary.simpleMessage("Ratings"),
        "ratingsAndReviews":
            MessageLookupByLibrary.simpleMessage("Reviews & Ratings"),
        "requestCancelled":
            MessageLookupByLibrary.simpleMessage("Request cancelled."),
        "reviewWithImages": MessageLookupByLibrary.simpleMessage(
            "Reviews with images & videos"),
        "reviews": MessageLookupByLibrary.simpleMessage("Reviews"),
        "search": MessageLookupByLibrary.simpleMessage("Search..."),
        "seeLess": MessageLookupByLibrary.simpleMessage("See less"),
        "seeMore": MessageLookupByLibrary.simpleMessage("See more"),
        "sellerInformation":
            MessageLookupByLibrary.simpleMessage("Seller Information:"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "shipping": MessageLookupByLibrary.simpleMessage("Shipping"),
        "shippingInformation":
            MessageLookupByLibrary.simpleMessage("Shippings Information:"),
        "showingReviews": m2,
        "sold": MessageLookupByLibrary.simpleMessage("Sold"),
        "topReviews": MessageLookupByLibrary.simpleMessage("Top Reviews"),
        "totalPrice": MessageLookupByLibrary.simpleMessage("Total price"),
        "visitStore": MessageLookupByLibrary.simpleMessage("Visit Store"),
        "voucher": MessageLookupByLibrary.simpleMessage("Voucher"),
        "wallet": MessageLookupByLibrary.simpleMessage("Wallet")
      };
}
