import SwiftUI
import SafariServices

struct Browser2InAppView: UIViewControllerRepresentable {
    
    typealias UIViewControllerType = SFSafariViewController
    
    func makeUIViewController(context: Context) -> SFSafariViewController {
        let url = URL(string: "https://duckduckgo.com")!
        return SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {
        
    }
    
}
