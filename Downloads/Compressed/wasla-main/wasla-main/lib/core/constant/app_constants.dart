
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// Create storage
final storage = new FlutterSecureStorage();

// Read value
class AppConstants{
  static const String APP_NAME="Wasla";
  static const int APP_VERSION=1;

  static const String BASE_URL="https://notes.tsouq-store.com/wasla/api";
  static const String test="$BASE_URL/test.php";


  //===============================AUTH===============================//
  static const String SIGNUP="$BASE_URL/en/register";
  static const String LOGIN="$BASE_URL/en/login";
  static const String VERIFYCODE_SIGNUP="$BASE_URL/en/email-verification";
  static const String GET_PROFILE_DATA="$BASE_URL/en/profile";
 //==========================FORGOT PASSWORD==========================//
  static const String CHECK_EMAIL="$BASE_URL/forgotpassword/checkemail.php";
  static const String VERIFYCODE_RESET="$BASE_URL/forgotpassword/verifycode.php";
  static const String RESET_PASSWORD="$BASE_URL/forgotpassword/resetpassword.php";
  //============================ Maps ================================//


  static const String BASE_URL_PLACE="https://maps.googleapis.com/maps/api/place/autocomplete/json/";
  static const String GOOGLE_API_KEY="AIzaSyDAvoYIQHFGUdT4nOGesWpaHP4fHflAHPQ";
  static const String GOOGLE_URL_DIRECTION="https://maps.googleapis.com/maps/api/directions/json?origin=Disneyland&destination=Universal+Studios+Hollywood&key=YOUR_API_KEY";
  //============================ Home ================================//
  static const String SLIDER="$BASE_URL/get_all_sliders";























  static const String GET_ALL_PRODUCTS="api/v1/flutterproducts";
  static const String GET_ALL_SLIDERS="api/v1/flutterproducts";
  static const String GET_ALL_CATEGORIES="api/v1/category";
  static const String GET_PROFILE="api/v1/me";
  static  String TOKEN="";
  static  String NAME="";
  static const String PHONE="";
  static const String PASSWORD="";


  static final String tableCartProduct='cartProduct';
  static final String columnName='name';
  static final String columnImage='iamge';
  static final String columnQuantity='quantity';
  static final String columnPrice='price';

  //auth
  static final String REGISTRATION_URI='api/v1/register';
  static final String LOGIN_URI='api/v1/login';

  //drop down language
  static final String arabic="arabic 🇪🇬󠁧󠁢󠁥󠁮󠁧󠁿";
  static final String english="English 🇺🇸";

  static final String ara="ar";
  static final String en="en";

}