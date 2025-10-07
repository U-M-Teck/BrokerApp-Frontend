import Flutter
import UIKit
import Firebase
import GoogleMaps

@main
@objc class AppDelegate: FlutterAppDelegate {
    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        FirebaseApp.configure()

        // ✅ Add your Google Maps API key here
        GMSServices.provideAPIKey("AIzaSyAgVMBCdn0CkCyJO7aRm76RW0gUYZLaB-A")

        GeneratedPluginRegistrant.register(with: self)
        UNUserNotificationCenter.current().delegate = self
        application.registerForRemoteNotifications()

        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
}
