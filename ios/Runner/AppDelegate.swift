import UIKit
import Flutter
import GoogleMaps  

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    if let apiKey = ProcessInfo.processInfo.environment["GOOGLE_MAPS_API_KEY"] {
        GMSServices.provideAPIKey(apiKey)
    } else {
        fatalError("Google Maps API Key is missing")
    }
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
