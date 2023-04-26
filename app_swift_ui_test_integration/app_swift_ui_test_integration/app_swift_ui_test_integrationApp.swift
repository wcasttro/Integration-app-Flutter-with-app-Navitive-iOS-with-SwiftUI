//
//  app_swift_ui_test_integrationApp.swift
//  app_swift_ui_test_integration
//
//  Created by werthen castro on 25/04/23.
//

import SwiftUI
import Flutter

import FlutterPluginRegistrant

class FlutterDependencies: ObservableObject {
  let flutterEngine = FlutterEngine(name: "my flutter engine")
  init(){
    // Runs the default Dart entrypoint with a default Flutter route.
    flutterEngine.run()
    // Connects plugins with iOS platform code to this app.
    GeneratedPluginRegistrant.register(with: self.flutterEngine);
  }
}

@main
struct app_swift_ui_test_integrationApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
