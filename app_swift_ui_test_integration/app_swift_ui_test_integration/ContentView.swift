//
//  ContentView.swift
//  app_swift_ui_test_integration
//
//  Created by werthen castro on 25/04/23.
//

// Passos para a integração

// 1º criar e adicionar modulo Flutter na pasta principal do projeto
// comnando para criar modulo: flutter create -t module <module_name>


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
