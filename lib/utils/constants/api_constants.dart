class URL {
  /// get APIS
  static const base = 'https://alfursantravel.com/';
  static const baseUrl = '${base}api/v2/';
  static const allVisas = baseUrl + "visas";
  static const visaDetails = baseUrl + "visa/"; //visa/united-arab-emirates
  static const allTours = baseUrl + "tours";
  static const toursDetails = baseUrl + "tours/"; //tours/istanbul
  static const gallery = baseUrl + "gallery";
  static const videos = baseUrl + "videos";
  static const about = baseUrl + "about";
  static const gallary = baseUrl + "gallery";
  static const image = base + "public/image/";

  /// post APIs
  static const sendMsg = "send-message";
  static const tourReservation = baseUrl + "tours/reservation";
  static const visaReservation = baseUrl + "visa/reservation";
  static const contactUs = baseUrl + "send-message";
}
