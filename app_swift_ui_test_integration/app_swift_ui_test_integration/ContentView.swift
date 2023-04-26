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

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
