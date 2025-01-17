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

  /// `Fursan`
  String get appName {
    return Intl.message(
      'Fursan',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `skip`
  String get skip {
    return Intl.message(
      'skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `home`
  String get home {
    return Intl.message(
      'home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Delete My Account`
  String get deleteAccount {
    return Intl.message(
      'Delete My Account',
      name: 'deleteAccount',
      desc: '',
      args: [],
    );
  }

  /// `This action is irreversible. All your data will be lost, and you will not be able to recover it.`
  String get deleteBody {
    return Intl.message(
      'This action is irreversible. All your data will be lost, and you will not be able to recover it.',
      name: 'deleteBody',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete your account?`
  String get askDelete {
    return Intl.message(
      'Are you sure you want to delete your account?',
      name: 'askDelete',
      desc: '',
      args: [],
    );
  }

  /// `Order Number `
  String get orderNumber {
    return Intl.message(
      'Order Number ',
      name: 'orderNumber',
      desc: '',
      args: [],
    );
  }

  /// `The Cost`
  String get cost {
    return Intl.message(
      'The Cost',
      name: 'cost',
      desc: '',
      args: [],
    );
  }

  /// `requirements`
  String get requirements {
    return Intl.message(
      'requirements',
      name: 'requirements',
      desc: '',
      args: [],
    );
  }

  /// `ّInformation`
  String get information {
    return Intl.message(
      'ّInformation',
      name: 'information',
      desc: '',
      args: [],
    );
  }

  /// `Account Deleted`
  String get accountDeleted {
    return Intl.message(
      'Account Deleted',
      name: 'accountDeleted',
      desc: '',
      args: [],
    );
  }

  /// `history`
  String get history {
    return Intl.message(
      'history',
      name: 'history',
      desc: '',
      args: [],
    );
  }

  /// `Update`
  String get update {
    return Intl.message(
      'Update',
      name: 'update',
      desc: '',
      args: [],
    );
  }

  /// `Cancle The Order`
  String get cancleOrder {
    return Intl.message(
      'Cancle The Order',
      name: 'cancleOrder',
      desc: '',
      args: [],
    );
  }

  /// `Later`
  String get later {
    return Intl.message(
      'Later',
      name: 'later',
      desc: '',
      args: [],
    );
  }

  /// `Your account is registered successfully`
  String get registerSuccessfully {
    return Intl.message(
      'Your account is registered successfully',
      name: 'registerSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Reservation`
  String get reservation {
    return Intl.message(
      'Reservation',
      name: 'reservation',
      desc: '',
      args: [],
    );
  }

  /// `Book Now`
  String get bookNow {
    return Intl.message(
      'Book Now',
      name: 'bookNow',
      desc: '',
      args: [],
    );
  }

  /// `Starting Search`
  String get startSearch {
    return Intl.message(
      'Starting Search',
      name: 'startSearch',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Arrival Time`
  String get round {
    return Intl.message(
      'Arrival Time',
      name: 'round',
      desc: '',
      args: [],
    );
  }

  /// `Nearst Tombstone`
  String get Tombstone {
    return Intl.message(
      'Nearst Tombstone',
      name: 'Tombstone',
      desc: '',
      args: [],
    );
  }

  /// `Place Name`
  String get placeName {
    return Intl.message(
      'Place Name',
      name: 'placeName',
      desc: '',
      args: [],
    );
  }

  /// `Morning shift Number`
  String get MorningShift {
    return Intl.message(
      'Morning shift Number',
      name: 'MorningShift',
      desc: '',
      args: [],
    );
  }

  /// `evening shift Number`
  String get eveningShift {
    return Intl.message(
      'evening shift Number',
      name: 'eveningShift',
      desc: '',
      args: [],
    );
  }

  /// `Street Name`
  String get streetName {
    return Intl.message(
      'Street Name',
      name: 'streetName',
      desc: '',
      args: [],
    );
  }

  /// `Building Number`
  String get buildingNumber {
    return Intl.message(
      'Building Number',
      name: 'buildingNumber',
      desc: '',
      args: [],
    );
  }

  /// `Refund Reason`
  String get refundReason {
    return Intl.message(
      'Refund Reason',
      name: 'refundReason',
      desc: '',
      args: [],
    );
  }

  /// `Confirm `
  String get confirm {
    return Intl.message(
      'Confirm ',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `First Name `
  String get firstName {
    return Intl.message(
      'First Name ',
      name: 'firstName',
      desc: '',
      args: [],
    );
  }

  /// `Last Name `
  String get lastName {
    return Intl.message(
      'Last Name ',
      name: 'lastName',
      desc: '',
      args: [],
    );
  }

  /// `Lowest Limit`
  String get limit {
    return Intl.message(
      'Lowest Limit',
      name: 'limit',
      desc: '',
      args: [],
    );
  }

  /// `are you sure that you want to cancle this order`
  String get cancleOrderBody {
    return Intl.message(
      'are you sure that you want to cancle this order',
      name: 'cancleOrderBody',
      desc: '',
      args: [],
    );
  }

  /// `Follow Order`
  String get followOeder {
    return Intl.message(
      'Follow Order',
      name: 'followOeder',
      desc: '',
      args: [],
    );
  }

  /// `Oreder Placed`
  String get orederPlaced {
    return Intl.message(
      'Oreder Placed',
      name: 'orederPlaced',
      desc: '',
      args: [],
    );
  }

  /// `Place Number`
  String get placeNumber {
    return Intl.message(
      'Place Number',
      name: 'placeNumber',
      desc: '',
      args: [],
    );
  }

  /// `Please Try Later`
  String get tryLater {
    return Intl.message(
      'Please Try Later',
      name: 'tryLater',
      desc: '',
      args: [],
    );
  }

  /// `there is no items in cart`
  String get noItemsInCart {
    return Intl.message(
      'there is no items in cart',
      name: 'noItemsInCart',
      desc: '',
      args: [],
    );
  }

  /// `Accepted`
  String get accepted {
    return Intl.message(
      'Accepted',
      name: 'accepted',
      desc: '',
      args: [],
    );
  }

  /// `Agent Code (Optional)`
  String get agentCode {
    return Intl.message(
      'Agent Code (Optional)',
      name: 'agentCode',
      desc: '',
      args: [],
    );
  }

  /// `there is an error`
  String get error {
    return Intl.message(
      'there is an error',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `refunds`
  String get refunds {
    return Intl.message(
      'refunds',
      name: 'refunds',
      desc: '',
      args: [],
    );
  }

  /// `packing`
  String get packing {
    return Intl.message(
      'packing',
      name: 'packing',
      desc: '',
      args: [],
    );
  }

  /// `companies`
  String get companies {
    return Intl.message(
      'companies',
      name: 'companies',
      desc: '',
      args: [],
    );
  }

  /// `Status`
  String get status {
    return Intl.message(
      'Status',
      name: 'status',
      desc: '',
      args: [],
    );
  }

  /// `Souhoola`
  String get souhoola {
    return Intl.message(
      'Souhoola',
      name: 'souhoola',
      desc: '',
      args: [],
    );
  }

  /// `Installments Services`
  String get installmentsServices {
    return Intl.message(
      'Installments Services',
      name: 'installmentsServices',
      desc: '',
      args: [],
    );
  }

  /// `Valu`
  String get valu {
    return Intl.message(
      'Valu',
      name: 'valu',
      desc: '',
      args: [],
    );
  }

  /// `if you doesnt receive a massage from us to continue buying use this qr code `
  String get mobilWalletOption {
    return Intl.message(
      'if you doesnt receive a massage from us to continue buying use this qr code ',
      name: 'mobilWalletOption',
      desc: '',
      args: [],
    );
  }

  /// `Installment with souhoola`
  String get installmentWithSouhoola {
    return Intl.message(
      'Installment with souhoola',
      name: 'installmentWithSouhoola',
      desc: '',
      args: [],
    );
  }

  /// `Installment with valu`
  String get installmentWithValu {
    return Intl.message(
      'Installment with valu',
      name: 'installmentWithValu',
      desc: '',
      args: [],
    );
  }

  /// `shipping`
  String get shipping {
    return Intl.message(
      'shipping',
      name: 'shipping',
      desc: '',
      args: [],
    );
  }

  /// `Delivered`
  String get Delivered {
    return Intl.message(
      'Delivered',
      name: 'Delivered',
      desc: '',
      args: [],
    );
  }

  /// `Details`
  String get details {
    return Intl.message(
      'Details',
      name: 'details',
      desc: '',
      args: [],
    );
  }

  /// `pay with fawry`
  String get fawry {
    return Intl.message(
      'pay with fawry',
      name: 'fawry',
      desc: '',
      args: [],
    );
  }

  /// `use to code to payment`
  String get fawryDes {
    return Intl.message(
      'use to code to payment',
      name: 'fawryDes',
      desc: '',
      args: [],
    );
  }

  /// ` Mobile Wallet`
  String get mobileWallet {
    return Intl.message(
      ' Mobile Wallet',
      name: 'mobileWallet',
      desc: '',
      args: [],
    );
  }

  /// `you can pay using your mobile phone wallet`
  String get mobileWalletDes {
    return Intl.message(
      'you can pay using your mobile phone wallet',
      name: 'mobileWalletDes',
      desc: '',
      args: [],
    );
  }

  /// `Follow Order`
  String get followOrder {
    return Intl.message(
      'Follow Order',
      name: 'followOrder',
      desc: '',
      args: [],
    );
  }

  /// `Back To Home`
  String get backToHome {
    return Intl.message(
      'Back To Home',
      name: 'backToHome',
      desc: '',
      args: [],
    );
  }

  /// `under delivery`
  String get underDelivery {
    return Intl.message(
      'under delivery',
      name: 'underDelivery',
      desc: '',
      args: [],
    );
  }

  /// `Get Payment Code`
  String get getPaymentCode {
    return Intl.message(
      'Get Payment Code',
      name: 'getPaymentCode',
      desc: '',
      args: [],
    );
  }

  /// `Your Code To Pay`
  String get fawryCode {
    return Intl.message(
      'Your Code To Pay',
      name: 'fawryCode',
      desc: '',
      args: [],
    );
  }

  /// `Other Types`
  String get OtherTypes {
    return Intl.message(
      'Other Types',
      name: 'OtherTypes',
      desc: '',
      args: [],
    );
  }

  /// `Re-Order`
  String get reOrder {
    return Intl.message(
      'Re-Order',
      name: 'reOrder',
      desc: '',
      args: [],
    );
  }

  /// `Order Details`
  String get orderDetails {
    return Intl.message(
      'Order Details',
      name: 'orderDetails',
      desc: '',
      args: [],
    );
  }

  /// `Oreder Placed and we review it `
  String get orederPlacedBody {
    return Intl.message(
      'Oreder Placed and we review it ',
      name: 'orederPlacedBody',
      desc: '',
      args: [],
    );
  }

  /// `Your order is Accepted`
  String get acceptedBody {
    return Intl.message(
      'Your order is Accepted',
      name: 'acceptedBody',
      desc: '',
      args: [],
    );
  }

  /// `we are packing your order and searching for nearest delivery`
  String get packingBody {
    return Intl.message(
      'we are packing your order and searching for nearest delivery',
      name: 'packingBody',
      desc: '',
      args: [],
    );
  }

  /// `please wait your order in the way `
  String get shippingBody {
    return Intl.message(
      'please wait your order in the way ',
      name: 'shippingBody',
      desc: '',
      args: [],
    );
  }

  /// `Your order is Delivered please call us for any problems`
  String get DeliveredBody {
    return Intl.message(
      'Your order is Delivered please call us for any problems',
      name: 'DeliveredBody',
      desc: '',
      args: [],
    );
  }

  /// `Categories`
  String get categories {
    return Intl.message(
      'Categories',
      name: 'categories',
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

  /// `avaliable to loan`
  String get avaiableToLoan {
    return Intl.message(
      'avaliable to loan',
      name: 'avaiableToLoan',
      desc: '',
      args: [],
    );
  }

  /// `you loan`
  String get moneyYouLoan {
    return Intl.message(
      'you loan',
      name: 'moneyYouLoan',
      desc: '',
      args: [],
    );
  }

  /// `Best Offers`
  String get bestOffers {
    return Intl.message(
      'Best Offers',
      name: 'bestOffers',
      desc: '',
      args: [],
    );
  }

  /// `Enter The Mobile Wallet Number`
  String get enterMobileWallet {
    return Intl.message(
      'Enter The Mobile Wallet Number',
      name: 'enterMobileWallet',
      desc: '',
      args: [],
    );
  }

  /// `Please try again or sign up`
  String get tryAgain {
    return Intl.message(
      'Please try again or sign up',
      name: 'tryAgain',
      desc: '',
      args: [],
    );
  }

  /// `if you didnt receive massage scan this QRcode`
  String get QRCodeDes {
    return Intl.message(
      'if you didnt receive massage scan this QRcode',
      name: 'QRCodeDes',
      desc: '',
      args: [],
    );
  }

  /// `E-mail`
  String get eMail {
    return Intl.message(
      'E-mail',
      name: 'eMail',
      desc: '',
      args: [],
    );
  }

  /// `Current Requests`
  String get currentRequest {
    return Intl.message(
      'Current Requests',
      name: 'currentRequest',
      desc: '',
      args: [],
    );
  }

  /// `Previous Requests`
  String get previousRequest {
    return Intl.message(
      'Previous Requests',
      name: 'previousRequest',
      desc: '',
      args: [],
    );
  }

  /// `Update Available`
  String get updateAvailable {
    return Intl.message(
      'Update Available',
      name: 'updateAvailable',
      desc: '',
      args: [],
    );
  }

  /// `A new version of the Fursan is available. Please update to continue`
  String get updateBody {
    return Intl.message(
      'A new version of the Fursan is available. Please update to continue',
      name: 'updateBody',
      desc: '',
      args: [],
    );
  }

  /// `point`
  String get point {
    return Intl.message(
      'point',
      name: 'point',
      desc: '',
      args: [],
    );
  }

  /// `Remote Payment`
  String get remotePayment {
    return Intl.message(
      'Remote Payment',
      name: 'remotePayment',
      desc: '',
      args: [],
    );
  }

  /// `send to wallet `
  String get sendToWallet {
    return Intl.message(
      'send to wallet ',
      name: 'sendToWallet',
      desc: '',
      args: [],
    );
  }

  /// `Contact  With Client`
  String get contactWithClient {
    return Intl.message(
      'Contact  With Client',
      name: 'contactWithClient',
      desc: '',
      args: [],
    );
  }

  /// `you can use the wallet balance to buy `
  String get walletTitle {
    return Intl.message(
      'you can use the wallet balance to buy ',
      name: 'walletTitle',
      desc: '',
      args: [],
    );
  }

  /// `continue`
  String get continueShoping {
    return Intl.message(
      'continue',
      name: 'continueShoping',
      desc: '',
      args: [],
    );
  }

  /// `Please Select Address first`
  String get selectAddress {
    return Intl.message(
      'Please Select Address first',
      name: 'selectAddress',
      desc: '',
      args: [],
    );
  }

  /// `The Sale Time ends in`
  String get saleTime {
    return Intl.message(
      'The Sale Time ends in',
      name: 'saleTime',
      desc: '',
      args: [],
    );
  }

  /// `My Order`
  String get myOrder {
    return Intl.message(
      'My Order',
      name: 'myOrder',
      desc: '',
      args: [],
    );
  }

  /// `installments on 6 months`
  String get installments6mon {
    return Intl.message(
      'installments on 6 months',
      name: 'installments6mon',
      desc: '',
      args: [],
    );
  }

  /// `installments on 12 months`
  String get installments12mon {
    return Intl.message(
      'installments on 12 months',
      name: 'installments12mon',
      desc: '',
      args: [],
    );
  }

  /// `Add product`
  String get addProduct {
    return Intl.message(
      'Add product',
      name: 'addProduct',
      desc: '',
      args: [],
    );
  }

  /// `verified`
  String get verified {
    return Intl.message(
      'verified',
      name: 'verified',
      desc: '',
      args: [],
    );
  }

  /// `please verify your account`
  String get notVerified {
    return Intl.message(
      'please verify your account',
      name: 'notVerified',
      desc: '',
      args: [],
    );
  }

  /// `No results found`
  String get noResult {
    return Intl.message(
      'No results found',
      name: 'noResult',
      desc: '',
      args: [],
    );
  }

  /// `Exit App`
  String get exitApp {
    return Intl.message(
      'Exit App',
      name: 'exitApp',
      desc: '',
      args: [],
    );
  }

  /// `The amount`
  String get amount {
    return Intl.message(
      'The amount',
      name: 'amount',
      desc: '',
      args: [],
    );
  }

  /// `There is no data here till now`
  String get noData {
    return Intl.message(
      'There is no data here till now',
      name: 'noData',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to exit the app?`
  String get confirmExitMessage {
    return Intl.message(
      'Are you sure you want to exit the app?',
      name: 'confirmExitMessage',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Recharge Wallet`
  String get rechangreWallet {
    return Intl.message(
      'Recharge Wallet',
      name: 'rechangreWallet',
      desc: '',
      args: [],
    );
  }

  /// `you can use any payment method`
  String get rechangreWalletBody {
    return Intl.message(
      'you can use any payment method',
      name: 'rechangreWalletBody',
      desc: '',
      args: [],
    );
  }

  /// `These credentials are not found`
  String get noUserFound {
    return Intl.message(
      'These credentials are not found',
      name: 'noUserFound',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `Best destinations`
  String get bestDestination {
    return Intl.message(
      'Best destinations',
      name: 'bestDestination',
      desc: '',
      args: [],
    );
  }

  /// `Our Offers`
  String get ourOffers {
    return Intl.message(
      'Our Offers',
      name: 'ourOffers',
      desc: '',
      args: [],
    );
  }

  /// `bookmarked`
  String get bookmarked {
    return Intl.message(
      'bookmarked',
      name: 'bookmarked',
      desc: '',
      args: [],
    );
  }

  /// `Our Tours`
  String get ourTours {
    return Intl.message(
      'Our Tours',
      name: 'ourTours',
      desc: '',
      args: [],
    );
  }

  /// `Previous Trips`
  String get previousTrips {
    return Intl.message(
      'Previous Trips',
      name: 'previousTrips',
      desc: '',
      args: [],
    );
  }

  /// `Postal Code`
  String get postalCode {
    return Intl.message(
      'Postal Code',
      name: 'postalCode',
      desc: '',
      args: [],
    );
  }

  /// `write more details like : Type Of The Service`
  String get worktype {
    return Intl.message(
      'write more details like : Type Of The Service',
      name: 'worktype',
      desc: '',
      args: [],
    );
  }

  /// `You can add more than one address for more than branch`
  String get addressListTitle {
    return Intl.message(
      'You can add more than one address for more than branch',
      name: 'addressListTitle',
      desc: '',
      args: [],
    );
  }

  /// `set your organization name`
  String get workName {
    return Intl.message(
      'set your organization name',
      name: 'workName',
      desc: '',
      args: [],
    );
  }

  /// `choose your city`
  String get selectCity {
    return Intl.message(
      'choose your city',
      name: 'selectCity',
      desc: '',
      args: [],
    );
  }

  /// `please dont let this filed null`
  String get pleaseEndterValue {
    return Intl.message(
      'please dont let this filed null',
      name: 'pleaseEndterValue',
      desc: '',
      args: [],
    );
  }

  /// `Hours`
  String get hours {
    return Intl.message(
      'Hours',
      name: 'hours',
      desc: '',
      args: [],
    );
  }

  /// `Version`
  String get version {
    return Intl.message(
      'Version',
      name: 'version',
      desc: '',
      args: [],
    );
  }

  /// `Don’t have an account?`
  String get dontHaveAccont {
    return Intl.message(
      'Don’t have an account?',
      name: 'dontHaveAccont',
      desc: '',
      args: [],
    );
  }

  /// `Arabic`
  String get arabic {
    return Intl.message(
      'Arabic',
      name: 'arabic',
      desc: '',
      args: [],
    );
  }

  /// `No Previous Tours till now `
  String get noPreviousTrips {
    return Intl.message(
      'No Previous Tours till now ',
      name: 'noPreviousTrips',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `Thank you for using our app!`
  String get thanksMassage {
    return Intl.message(
      'Thank you for using our app!',
      name: 'thanksMassage',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get searchTitle {
    return Intl.message(
      'Search',
      name: 'searchTitle',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the 'search...' key

  /// `Help`
  String get helper {
    return Intl.message(
      'Help',
      name: 'helper',
      desc: '',
      args: [],
    );
  }

  /// `explore Iraq  `
  String get exploreIraq {
    return Intl.message(
      'explore Iraq  ',
      name: 'exploreIraq',
      desc: '',
      args: [],
    );
  }

  /// `Visa Form data`
  String get visaForm {
    return Intl.message(
      'Visa Form data',
      name: 'visaForm',
      desc: '',
      args: [],
    );
  }

  /// `Visa Details`
  String get visaDetails {
    return Intl.message(
      'Visa Details',
      name: 'visaDetails',
      desc: '',
      args: [],
    );
  }

  /// `Tour Details`
  String get tourDetails {
    return Intl.message(
      'Tour Details',
      name: 'tourDetails',
      desc: '',
      args: [],
    );
  }

  /// `Tour Form data`
  String get tourForm {
    return Intl.message(
      'Tour Form data',
      name: 'tourForm',
      desc: '',
      args: [],
    );
  }

  /// ` Additional Notes`
  String get notes {
    return Intl.message(
      ' Additional Notes',
      name: 'notes',
      desc: '',
      args: [],
    );
  }

  /// `Stagnant Items.......You can upload your stagnant items to your account and they will be rotated and resold on your behalf`
  String get stagnantItems {
    return Intl.message(
      'Stagnant Items.......You can upload your stagnant items to your account and they will be rotated and resold on your behalf',
      name: 'stagnantItems',
      desc: '',
      args: [],
    );
  }

  /// `Wallet......Here you can get money and cashback to help you increase your profits`
  String get wallet {
    return Intl.message(
      'Wallet......Here you can get money and cashback to help you increase your profits',
      name: 'wallet',
      desc: '',
      args: [],
    );
  }

  /// `Customer's Stagnant Items.....You can browse stagnant items at other pharmacies in your area and repurchase them`
  String get customerStagnantItems {
    return Intl.message(
      'Customer\'s Stagnant Items.....You can browse stagnant items at other pharmacies in your area and repurchase them',
      name: 'customerStagnantItems',
      desc: '',
      args: [],
    );
  }

  /// `Missing Items Notebook....You can upload a missing items sheet or an Excel sheet, and the orders will be processed automatically on your behalf`
  String get missingItemsNotebook {
    return Intl.message(
      'Missing Items Notebook....You can upload a missing items sheet or an Excel sheet, and the orders will be processed automatically on your behalf',
      name: 'missingItemsNotebook',
      desc: '',
      args: [],
    );
  }

  /// `Expired Products or Expired Items.......Dispose of expired items by uploading expired or damaged products`
  String get expiredProducts {
    return Intl.message(
      'Expired Products or Expired Items.......Dispose of expired items by uploading expired or damaged products',
      name: 'expiredProducts',
      desc: '',
      args: [],
    );
  }

  /// `Return Order....You can return an item within 3 days after receiving it`
  String get returnOrder {
    return Intl.message(
      'Return Order....You can return an item within 3 days after receiving it',
      name: 'returnOrder',
      desc: '',
      args: [],
    );
  }

  /// `My Favorite Items.....What you want to buy later`
  String get favoriteItems {
    return Intl.message(
      'My Favorite Items.....What you want to buy later',
      name: 'favoriteItems',
      desc: '',
      args: [],
    );
  }

  /// `Add Address`
  String get addNewAddress {
    return Intl.message(
      'Add Address',
      name: 'addNewAddress',
      desc: '',
      args: [],
    );
  }

  /// `More`
  String get more {
    return Intl.message(
      'More',
      name: 'more',
      desc: '',
      args: [],
    );
  }

  /// `i am here to help you around the whole app`
  String get onbordingMsg {
    return Intl.message(
      'i am here to help you around the whole app',
      name: 'onbordingMsg',
      desc: '',
      args: [],
    );
  }

  /// `Log Out`
  String get logOut {
    return Intl.message(
      'Log Out',
      name: 'logOut',
      desc: '',
      args: [],
    );
  }

  /// `en`
  String get localeee {
    return Intl.message(
      'en',
      name: 'localeee',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Address`
  String get confirmAddress {
    return Intl.message(
      'Confirm Address',
      name: 'confirmAddress',
      desc: '',
      args: [],
    );
  }

  /// `Payment Method`
  String get choosePaymentMethod {
    return Intl.message(
      'Payment Method',
      name: 'choosePaymentMethod',
      desc: '',
      args: [],
    );
  }

  /// `Cash on Delivery`
  String get cashOnDelivery {
    return Intl.message(
      'Cash on Delivery',
      name: 'cashOnDelivery',
      desc: '',
      args: [],
    );
  }

  /// `You will pay when you receive the order`
  String get cashOnDeliverydes {
    return Intl.message(
      'You will pay when you receive the order',
      name: 'cashOnDeliverydes',
      desc: '',
      args: [],
    );
  }

  /// `pay from your wallet balance`
  String get walletCacheDes {
    return Intl.message(
      'pay from your wallet balance',
      name: 'walletCacheDes',
      desc: '',
      args: [],
    );
  }

  /// `pay using your credit card `
  String get creditCarddes {
    return Intl.message(
      'pay using your credit card ',
      name: 'creditCarddes',
      desc: '',
      args: [],
    );
  }

  /// `buy now and buy later `
  String get delayedCashDes {
    return Intl.message(
      'buy now and buy later ',
      name: 'delayedCashDes',
      desc: '',
      args: [],
    );
  }

  /// `Credit Card`
  String get creditCard {
    return Intl.message(
      'Credit Card',
      name: 'creditCard',
      desc: '',
      args: [],
    );
  }

  /// `Delayed Cash`
  String get delayedCash {
    return Intl.message(
      'Delayed Cash',
      name: 'delayedCash',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get register {
    return Intl.message(
      'Register',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `Enjoy Fursan Tours`
  String get welcomeMessage {
    return Intl.message(
      'Enjoy Fursan Tours',
      name: 'welcomeMessage',
      desc: '',
      args: [],
    );
  }

  /// `Cash on Delivery Screen`
  String get cashOnDeliveryScreen {
    return Intl.message(
      'Cash on Delivery Screen',
      name: 'cashOnDeliveryScreen',
      desc: '',
      args: [],
    );
  }

  /// `Credit Card Payment Screen`
  String get creditCardPaymentScreen {
    return Intl.message(
      'Credit Card Payment Screen',
      name: 'creditCardPaymentScreen',
      desc: '',
      args: [],
    );
  }

  /// `Delayed Cash Payment Screen`
  String get delayedCashScreen {
    return Intl.message(
      'Delayed Cash Payment Screen',
      name: 'delayedCashScreen',
      desc: '',
      args: [],
    );
  }

  /// `You have 30 days to repay the debt`
  String get delayedCashScreenDesTime {
    return Intl.message(
      'You have 30 days to repay the debt',
      name: 'delayedCashScreenDesTime',
      desc: '',
      args: [],
    );
  }

  /// `Change the language of the application`
  String get languageDes {
    return Intl.message(
      'Change the language of the application',
      name: 'languageDes',
      desc: '',
      args: [],
    );
  }

  /// `Make Changes to your profile Info`
  String get profileInfoDes {
    return Intl.message(
      'Make Changes to your profile Info',
      name: 'profileInfoDes',
      desc: '',
      args: [],
    );
  }

  /// `About us`
  String get aboutApp {
    return Intl.message(
      'About us',
      name: 'aboutApp',
      desc: '',
      args: [],
    );
  }

  /// ` you can take a look on our newest digital services `
  String get medicalServices {
    return Intl.message(
      ' you can take a look on our newest digital services ',
      name: 'medicalServices',
      desc: '',
      args: [],
    );
  }

  /// `you can speak to a specialist`
  String get speakToUs {
    return Intl.message(
      'you can speak to a specialist',
      name: 'speakToUs',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Profile Info`
  String get profileInfo {
    return Intl.message(
      'Profile Info',
      name: 'profileInfo',
      desc: '',
      args: [],
    );
  }

  /// `conect with us for varification `
  String get verification_status {
    return Intl.message(
      'conect with us for varification ',
      name: 'verification_status',
      desc: '',
      args: [],
    );
  }

  /// `Select Quantitiy at First`
  String get selectQuantitiy {
    return Intl.message(
      'Select Quantitiy at First',
      name: 'selectQuantitiy',
      desc: '',
      args: [],
    );
  }

  /// `Pending`
  String get refused {
    return Intl.message(
      'Pending',
      name: 'refused',
      desc: '',
      args: [],
    );
  }

  /// ` please enter valid email `
  String get invalidEmail {
    return Intl.message(
      ' please enter valid email ',
      name: 'invalidEmail',
      desc: '',
      args: [],
    );
  }

  /// `Compare Price`
  String get comparePrice {
    return Intl.message(
      'Compare Price',
      name: 'comparePrice',
      desc: '',
      args: [],
    );
  }

  /// `discont`
  String get discont {
    return Intl.message(
      'discont',
      name: 'discont',
      desc: '',
      args: [],
    );
  }

  /// `There is no internet connection`
  String get NoInternetConnection {
    return Intl.message(
      'There is no internet connection',
      name: 'NoInternetConnection',
      desc: '',
      args: [],
    );
  }

  /// `New Product`
  String get newProduct {
    return Intl.message(
      'New Product',
      name: 'newProduct',
      desc: '',
      args: [],
    );
  }

  /// `Select region`
  String get selectRegion {
    return Intl.message(
      'Select region',
      name: 'selectRegion',
      desc: '',
      args: [],
    );
  }

  /// `Verification Code`
  String get verificationCode {
    return Intl.message(
      'Verification Code',
      name: 'verificationCode',
      desc: '',
      args: [],
    );
  }

  /// `The Reset Code is Sent`
  String get emailPasswordSend {
    return Intl.message(
      'The Reset Code is Sent',
      name: 'emailPasswordSend',
      desc: '',
      args: [],
    );
  }

  /// `enter your email or phonenumber and we will send you a password resent link.`
  String get forgetPasswordBody {
    return Intl.message(
      'enter your email or phonenumber and we will send you a password resent link.',
      name: 'forgetPasswordBody',
      desc: '',
      args: [],
    );
  }

  /// `Minutes`
  String get minutes {
    return Intl.message(
      'Minutes',
      name: 'minutes',
      desc: '',
      args: [],
    );
  }

  /// `Cash Back`
  String get cashBack {
    return Intl.message(
      'Cash Back',
      name: 'cashBack',
      desc: '',
      args: [],
    );
  }

  /// `you have : `
  String get youHave {
    return Intl.message(
      'you have : ',
      name: 'youHave',
      desc: '',
      args: [],
    );
  }

  /// `The password cant be less than 4 `
  String get passwordTooShort {
    return Intl.message(
      'The password cant be less than 4 ',
      name: 'passwordTooShort',
      desc: '',
      args: [],
    );
  }

  /// `You Can Convert Your Points To :  `
  String get contvertTo {
    return Intl.message(
      'You Can Convert Your Points To :  ',
      name: 'contvertTo',
      desc: '',
      args: [],
    );
  }

  /// `Seconds`
  String get seconds {
    return Intl.message(
      'Seconds',
      name: 'seconds',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Payment`
  String get confirmPayment {
    return Intl.message(
      'Confirm Payment',
      name: 'confirmPayment',
      desc: '',
      args: [],
    );
  }

  /// `Continue Payment`
  String get continuePayment {
    return Intl.message(
      'Continue Payment',
      name: 'continuePayment',
      desc: '',
      args: [],
    );
  }

  /// `Also Available In :`
  String get alsoAvailable {
    return Intl.message(
      'Also Available In :',
      name: 'alsoAvailable',
      desc: '',
      args: [],
    );
  }

  /// `Re Change`
  String get reCharge {
    return Intl.message(
      'Re Change',
      name: 'reCharge',
      desc: '',
      args: [],
    );
  }

  /// `Select Language`
  String get selectLanguage {
    return Intl.message(
      'Select Language',
      name: 'selectLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Select Country`
  String get selectCountry {
    return Intl.message(
      'Select Country',
      name: 'selectCountry',
      desc: '',
      args: [],
    );
  }

  /// `You cannot buy for less than 500 pounds`
  String get buyingLimit {
    return Intl.message(
      'You cannot buy for less than 500 pounds',
      name: 'buyingLimit',
      desc: '',
      args: [],
    );
  }

  /// `saudiArabia`
  String get saudiArabia {
    return Intl.message(
      'saudiArabia',
      name: 'saudiArabia',
      desc: '',
      args: [],
    );
  }

  /// `Sing In`
  String get singIn {
    return Intl.message(
      'Sing In',
      name: 'singIn',
      desc: '',
      args: [],
    );
  }

  /// `Size`
  String get size {
    return Intl.message(
      'Size',
      name: 'size',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get description {
    return Intl.message(
      'Description',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `Today Sale`
  String get flashTodaySale {
    return Intl.message(
      'Today Sale',
      name: 'flashTodaySale',
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

  /// `EGP`
  String get pound {
    return Intl.message(
      'EGP',
      name: 'pound',
      desc: '',
      args: [],
    );
  }

  /// `Shipping Address`
  String get address {
    return Intl.message(
      'Shipping Address',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `Welcome  `
  String get loginTitle {
    return Intl.message(
      'Welcome  ',
      name: 'loginTitle',
      desc: '',
      args: [],
    );
  }

  /// `The World Is Waiting – Let’s Go!`
  String get loginBody {
    return Intl.message(
      'The World Is Waiting – Let’s Go!',
      name: 'loginBody',
      desc: '',
      args: [],
    );
  }

  /// `Buy Now`
  String get buyNow {
    return Intl.message(
      'Buy Now',
      name: 'buyNow',
      desc: '',
      args: [],
    );
  }

  /// `Sing Up`
  String get singUp {
    return Intl.message(
      'Sing Up',
      name: 'singUp',
      desc: '',
      args: [],
    );
  }

  /// `Chat US`
  String get chatUs {
    return Intl.message(
      'Chat US',
      name: 'chatUs',
      desc: '',
      args: [],
    );
  }

  /// `New `
  String get createAccount {
    return Intl.message(
      'New ',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `Address Details`
  String get addressDetails {
    return Intl.message(
      'Address Details',
      name: 'addressDetails',
      desc: '',
      args: [],
    );
  }

  /// `Last Address`
  String get lastAddress {
    return Intl.message(
      'Last Address',
      name: 'lastAddress',
      desc: '',
      args: [],
    );
  }

  /// `Pay with Last Address`
  String get payWithLastAddress {
    return Intl.message(
      'Pay with Last Address',
      name: 'payWithLastAddress',
      desc: '',
      args: [],
    );
  }

  /// `Save and Pay`
  String get saveAndPay {
    return Intl.message(
      'Save and Pay',
      name: 'saveAndPay',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get phoneNumber {
    return Intl.message(
      'Phone Number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Forget Password ?`
  String get forgetPassword {
    return Intl.message(
      'Forget Password ?',
      name: 'forgetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Remember Me`
  String get rememberMe {
    return Intl.message(
      'Remember Me',
      name: 'rememberMe',
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

  /// `Total`
  String get total {
    return Intl.message(
      'Total',
      name: 'total',
      desc: '',
      args: [],
    );
  }

  /// `Check Out`
  String get checkOut {
    return Intl.message(
      'Check Out',
      name: 'checkOut',
      desc: '',
      args: [],
    );
  }

  /// `Points`
  String get points {
    return Intl.message(
      'Points',
      name: 'points',
      desc: '',
      args: [],
    );
  }

  /// `Edit The Product`
  String get editProduct {
    return Intl.message(
      'Edit The Product',
      name: 'editProduct',
      desc: '',
      args: [],
    );
  }

  /// `Add To Cart`
  String get addToCart {
    return Intl.message(
      'Add To Cart',
      name: 'addToCart',
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

  /// `Save`
  String get saveChanges {
    return Intl.message(
      'Save',
      name: 'saveChanges',
      desc: '',
      args: [],
    );
  }

  /// `Company`
  String get company {
    return Intl.message(
      'Company',
      name: 'company',
      desc: '',
      args: [],
    );
  }

  /// `Loading...`
  String get loading {
    return Intl.message(
      'Loading...',
      name: 'loading',
      desc: '',
      args: [],
    );
  }

  /// `Confirm password`
  String get confirmPassword {
    return Intl.message(
      'Confirm password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Unknown`
  String get unknown {
    return Intl.message(
      'Unknown',
      name: 'unknown',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get coontinue {
    return Intl.message(
      'Continue',
      name: 'coontinue',
      desc: '',
      args: [],
    );
  }

  /// `User Name`
  String get userName {
    return Intl.message(
      'User Name',
      name: 'userName',
      desc: '',
      args: [],
    );
  }

  /// `Welcome Again`
  String get letsStart {
    return Intl.message(
      'Welcome Again',
      name: 'letsStart',
      desc: '',
      args: [],
    );
  }

  /// ` WhatsApp`
  String get whatsApp {
    return Intl.message(
      ' WhatsApp',
      name: 'whatsApp',
      desc: '',
      args: [],
    );
  }

  /// `What are the latest offers ?`
  String get whatisNewOffers {
    return Intl.message(
      'What are the latest offers ?',
      name: 'whatisNewOffers',
      desc: '',
      args: [],
    );
  }

  /// `Terms of use`
  String get termsOfUse {
    return Intl.message(
      'Terms of use',
      name: 'termsOfUse',
      desc: '',
      args: [],
    );
  }

  /// `I agree to `
  String get iAgreeTo {
    return Intl.message(
      'I agree to ',
      name: 'iAgreeTo',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `see all`
  String get seeAll {
    return Intl.message(
      'see all',
      name: 'seeAll',
      desc: '',
      args: [],
    );
  }

  /// `View all`
  String get viewAll {
    return Intl.message(
      'View all',
      name: 'viewAll',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get done {
    return Intl.message(
      'Done',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `Visa`
  String get visa {
    return Intl.message(
      'Visa',
      name: 'visa',
      desc: '',
      args: [],
    );
  }

  /// `Tours`
  String get tours {
    return Intl.message(
      'Tours',
      name: 'tours',
      desc: '',
      args: [],
    );
  }

  /// `Best Destinations`
  String get bestDestinations {
    return Intl.message(
      'Best Destinations',
      name: 'bestDestinations',
      desc: '',
      args: [],
    );
  }

  /// `Offers`
  String get offers {
    return Intl.message(
      'Offers',
      name: 'offers',
      desc: '',
      args: [],
    );
  }

  /// `My Wallet`
  String get myWallet {
    return Intl.message(
      'My Wallet',
      name: 'myWallet',
      desc: '',
      args: [],
    );
  }

  /// `Favorites`
  String get favorite {
    return Intl.message(
      'Favorites',
      name: 'favorite',
      desc: '',
      args: [],
    );
  }

  /// `Choose Image`
  String get chooseImage {
    return Intl.message(
      'Choose Image',
      name: 'chooseImage',
      desc: '',
      args: [],
    );
  }

  /// `Unit Price`
  String get unitPrice {
    return Intl.message(
      'Unit Price',
      name: 'unitPrice',
      desc: '',
      args: [],
    );
  }

  /// `Quantity`
  String get quantity {
    return Intl.message(
      'Quantity',
      name: 'quantity',
      desc: '',
      args: [],
    );
  }

  /// `Price before Offer`
  String get priceBeforeOffer {
    return Intl.message(
      'Price before Offer',
      name: 'priceBeforeOffer',
      desc: '',
      args: [],
    );
  }

  /// `Price After Offer`
  String get priceAfterOffer {
    return Intl.message(
      'Price After Offer',
      name: 'priceAfterOffer',
      desc: '',
      args: [],
    );
  }

  /// `avaliable Itmes`
  String get avaliableItemCount {
    return Intl.message(
      'avaliable Itmes',
      name: 'avaliableItemCount',
      desc: '',
      args: [],
    );
  }

  /// `My Stagnant Categories`
  String get myStagnantCategories {
    return Intl.message(
      'My Stagnant Categories',
      name: 'myStagnantCategories',
      desc: '',
      args: [],
    );
  }

  /// `Pharmacy`
  String get pharmacy {
    return Intl.message(
      'Pharmacy',
      name: 'pharmacy',
      desc: '',
      args: [],
    );
  }

  /// `Product Name`
  String get productName {
    return Intl.message(
      'Product Name',
      name: 'productName',
      desc: '',
      args: [],
    );
  }

  /// `Product Description`
  String get productDescription {
    return Intl.message(
      'Product Description',
      name: 'productDescription',
      desc: '',
      args: [],
    );
  }

  /// `services`
  String get services {
    return Intl.message(
      'services',
      name: 'services',
      desc: '',
      args: [],
    );
  }

  /// `Search here`
  String get search {
    return Intl.message(
      'Search here',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Call us`
  String get callUs {
    return Intl.message(
      'Call us',
      name: 'callUs',
      desc: '',
      args: [],
    );
  }

  /// `Medicine`
  String get medicine {
    return Intl.message(
      'Medicine',
      name: 'medicine',
      desc: '',
      args: [],
    );
  }

  /// `Medical Supplies`
  String get medicalSupplies {
    return Intl.message(
      'Medical Supplies',
      name: 'medicalSupplies',
      desc: '',
      args: [],
    );
  }

  /// `Stagnant categories`
  String get stagnantCategories {
    return Intl.message(
      'Stagnant categories',
      name: 'stagnantCategories',
      desc: '',
      args: [],
    );
  }

  /// `Cart`
  String get cart {
    return Intl.message(
      'Cart',
      name: 'cart',
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
      Locale.fromSubtags(languageCode: 'ar'),
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
