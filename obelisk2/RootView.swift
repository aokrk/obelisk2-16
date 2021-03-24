





import SwiftUI

struct RootView: View {


    @AppStorage("isFirstLaunch") var isFirstLaunch = true



    var body: some View {
        ContentView().fullScreenCover(isPresented: $isFirstLaunch ) {LoginView().environment(\.isFirstLaunch, self.$isFirstLaunch)
            }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}


