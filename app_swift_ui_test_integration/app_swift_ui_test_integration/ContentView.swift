//
//  ContentView.swift
//  app_swift_ui_test_integration
//
//  Created by werthen castro on 25/04/23.
//

// Passos para a integração

// 1º criar e adicionar modulo Flutter na pasta principal do projeto
// comnando para criar modulo: flutter create -t module <module_name>

// 2º criar podfile, comando: pod init

// 3º abrir pelo xcode e adicionar codigo ao podfile, na parte superior após o use_frameworks!
// obs:  adicionar install_all_flutter_pods(flutter_application_path). para cada target

// 4º usar pod install e pod update

// 5º fechar projeto e abrir o arquivo xcworkspace

// 6º adicionar codigo para abrir app Flutter

// 7º executar o projeto mesmo que tenha erros aparentes, eles vão sumir após o builder

import SwiftUI
import Flutter


struct ContentView: View {
    
    @EnvironmentObject var flutterDependencies: FlutterDependencies

    var body: some View {
        Button("Open FlutterApp") {
             openFlutterApp()
           }
    }
    
    func openFlutterApp() {
        // Get the RootViewController.
        guard
          let windowScene = UIApplication.shared.connectedScenes
            .first(where: { $0.activationState == .foregroundActive && $0 is UIWindowScene }) as? UIWindowScene,
          let window = windowScene.windows.first(where: \.isKeyWindow),
          let rootViewController = window.rootViewController
        else { return }

        // Create the FlutterViewController without an existing FlutterEngine.
        let flutterViewController = FlutterViewController(
          project: nil,
          nibName: nil,
          bundle: nil)
        flutterViewController.modalPresentationStyle = .overCurrentContext
        flutterViewController.isViewOpaque = false

        rootViewController.present(flutterViewController, animated: true)
      }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
