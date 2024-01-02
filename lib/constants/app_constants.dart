class AppConstants {
  static const animationDuration = Duration(milliseconds: 200);
  static const defaultDuration = Duration(milliseconds: 250);
  static const defaultTimeoutDuration = Duration(milliseconds: 3000);

  static const dateFormat = 'dd MMM yyyy';
  static const weekDateFormat = 'E, dd MMM yyyy';
  static const shortDateFormat = 'd MMM';
  static const dateTimeFormat = 'dd MMM hh:mm';
  static const fullDateTimeFormat = 'dd MMM yyyy - HH:mm';
  static const int defaultAsyncValidatorsDebounceTime = 500;
  static const pendingPaymentFormat = 'dd MMM yyyy, HH:mm';
  static const appointmentTimeFormat = 'MMMM dd yyyy, HH:mm';
  static const dayAndMonthFormat = 'dd MMM';
  static const monthAndYearFormat = 'MMMM, yyyy';
  static const doctorNextTimeSlotFormat = 'dd MMM hh:mm a';
  static const hourAMFormat = 'hh:mm a';
  static const monthFormat = 'MMM';

  static const appScheme = 'example.my.app';
  static const hostScheme = 'https://example.my.app/callback';

  static const authCallback = '$appScheme://callback';

  static const tiktokScope = [
    'user.info.basic',
  ];
}
