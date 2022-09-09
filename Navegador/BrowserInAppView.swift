import WebKit
import SwiftUI

struct BrowserInAppView: UIViewRepresentable {
    
    typealias UIViewType = WKWebView
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let url = URL(string: "https://duckduckgo.com") else { return }
        uiView.load(URLRequest(url: url))
    }
    
}
