//
//  ContentView.swift
//  FiraWebImplementation
//
//  Created by Miguel Rincon on 12/16/21.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingWebView = false
    @State private var isShowingSafari = false
    
    var url = URL(string: "https://www.google.com")!
    
    var body: some View {
        VStack {
            NavigationView {
                NavigationLink(destination: WebView(url: url)) {
                    Text("show web view")
                }
            }
            
            // Para mostrar pantalla completa el SafariViewController
            // se usa el fullScreenCover modal
            Button(action: showSafariView) {
                Text("show safari view")
            }
            .fullScreenCover(isPresented: $isShowingSafari) {
                SafariView(url: url)
            }
        }
    }
    
    private func showWebView() {
        isShowingWebView.toggle()
    }
    
    private func showSafariView() {
        isShowingSafari.toggle()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
