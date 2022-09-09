import SwiftUI

struct ContentView: View {
    
    @State var bShowWebView = false
    @State var bShowWebView2 = false
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 20) {
            Link(destination: URL(string: "https://duckduckgo.com")!) {
                Text("Abrir safari")
                    .padding()
                    .padding([.leading, .trailing], 39)
                    .background(.blue)
                    .tint(.white)
            }
            
            Button {
                bShowWebView.toggle()
            } label: {
                Text("Abrir dentro")
                    .padding()
                    .padding([.leading, .trailing], 35)
                    .background(.red)
                    .tint(.white)
            }
            .sheet(isPresented: $bShowWebView) {
                BrowserInAppView()
            }
            
            Button {
                bShowWebView2.toggle()
            } label: {
                Text("Abrir dentro 2")
                    .padding()
                    .padding([.leading, .trailing], 30)
                    .background(.black)
                    .tint(.white)
            }
            .sheet(isPresented: $bShowWebView2) {
                Browser2InAppView()
            }
            
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
