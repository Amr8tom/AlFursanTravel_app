class URL {
  /// get APIS
  static const base = 'https://alfursantravel.com/';
  static const baseUrl = '${base}api/v2/';
  static const allVisas = baseUrl + "visas";
  static const visaDetails = baseUrl + "visa/"; //visa/united-arab-emirates
  static const allTours = baseUrl + "tours";
  static const toursDetails = baseUrl + "tour/"; //tours/istanbul
  static const gallery = baseUrl + "gallery";
  static const videos = baseUrl + "videos";
  static const about = baseUrl + "about";

  /// TODO: need to set the right endPoint for profile
  static const profile = baseUrl + "profile";

  /// TODO: need to set the right endPoint for notification
  static const notification = baseUrl + "notification";
  static const gallary = baseUrl + "gallery";
  static const image = base + "public/image/";

  /// post APIs
  static const login = baseUrl + "login";
  static const signIn = baseUrl + "sign_in";
  static const search = baseUrl + "search";
  static const tourReservation = baseUrl + "tours/reservation";
  static const visaReservation = baseUrl + "visa/reservation";
  static const contactUs = baseUrl + "send-message";
}
