

import SwiftUI

@main
struct obelisk: App {
    
    @AppStorage("isFirstLaunch") var isFirstLaunch = true
    
    
    
    var body: some Scene {
        WindowGroup {
            RootView()
        
            
        }
    }
}
