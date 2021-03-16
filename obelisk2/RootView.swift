
import SwiftUI
import Foundation
import UIKit

struct RootView: View {
    
    
    
    
    
    @AppStorage("isFirstLaunch") var isFirstLaunch = true
    
    var body: some View {
     //  LoginView()
        
        ContentView()
 
            .sheet(isPresented: $isFirstLaunch) {
//                WorkThroughView()
                LoginView()
            }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        
        RootView()
    }
}
