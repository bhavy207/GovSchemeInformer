/// Centralized asset paths — use these instead of hard-coded strings.
class AppAssets {
  // existing physical locations (keeps build working)
  static const String logo = 'assets/img/logo.png';
  static const String imagesDir = 'assets/images/';
  static const String iconsDir = 'assets/icons/';

  // logical (future) canonical paths — you can move files later to match these
  static const String logoCanonical = '${imagesDir}logo.png';
}
