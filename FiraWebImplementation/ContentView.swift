//
//  ContentView.swift
//  FiraWebImplementation
//
//  Created by Miguel Rincon on 12/16/21.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingWebView = false
    
    var url = URL(string: "https://firalivedev.blob.core.windows.net/scripts/demo/index.html?store=61086e62e714cd300dfedf85")!
    
    var body: some View {
        NavigationView {
            NavigationLink(destination: SafariView(url: url)) {
                Text("show web view")
            }
        }
//        Button(action: showWebView) {
//            Text("show safari view")
//        }
//        .sheet(isPresented: $isShowingWebView) {
//            WebView(url: URL(string: firaUrl)!)
//        }
    }
    
    func showWebView() {
        isShowingWebView.toggle()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
