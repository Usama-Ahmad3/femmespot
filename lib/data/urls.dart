class UserUrls {
  static dynamic requestedData = '';
  static const String getAllUsers = '';
  static const String getSingleUser = '';
  static const String getUserProfile = '';
  static const String postUserSignup =
      'http://ecrm.kollarcollections.com/api/v1/users';
  static const String postLoginOtp =
      'http://ecrm.kollarcollections.com/api/v1/users/otpLogin';
  static const String postVerifyOtp = '';
  static const String postGallery = '';
  static const String patchUpdateUser = '';
}

class SaloonUrls {
  static const String getAllSaloons = '';
  static const String getSingleSaloon = '';
  static const String updateSaloon = '';
  static const String postSaloonSignup = '';
  static const String postVerifyOtp = '';
  static const String postLoginOtp = '';
  static const String postGallery = '';
}

class ServicesUrls {
  static const String getAllServices = '';
  static const String postNewServices = '';
}

class ReviewUrls {
  static const String postAddReview = '';
  static const String postCreateReview = '';
}

class CategoryUrls {
  static const String getAllCategories = '';
  static const String getAllCategoriesName = '';
  static const String getAllCategoriesId = '';
  static const String postNewCategory = '';
  static const String delCategory = '';
  static const String putUpdateCategory = '';
}

class ProductUrls {
  static const String getCart = '';
  static const String getAllProducts = '';
  static const String getProductById = '';
  static const String postCreateProduct = '';
  static const String postAddProduct = '';
  static const String postProductToCart = '';
  static const String delProduct = '';
  static const String delCart = '';
  static const String patchUpdateProduct = '';
}

class AppointmentUrls {
  static const String getAllAppointments = '';
  static const String getTotalAppointments = '';
  static const String getAllAppointmentsSaloon = '';
  static const String getOneAppointments = '';
  static const String postCreateAppointments = '';
  static const String delOneAppointment = '';
  static const String patchUpdateAppointment = '';
}

class OrderUrls {
  static const String getTotalOrders = '';
  static const String getOderDetail = '';
  static const String postCreateOder = '';
}
