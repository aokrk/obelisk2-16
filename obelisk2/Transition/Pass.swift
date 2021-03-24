import SwiftUI

struct PassView: View {
    
    @Environment (\.isFirstLaunch) var isPresentedModally
    @State private var isActive = false

    @State var inputPassword: String = ""
    
    
    var body: some View {
        VStack {
            
            
            Text("パスワードを設定").font(.system(size: 40,weight: .heavy))
            
         
                TextField("パスワードをここに入力", text: $inputPassword)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            
       
            
            
NavigationLink(destination: IconView(), isActive: $isActive ) {
 Button(action: {self.isActive = true}, label: {Text("次へ")}
 
 
 
 
 //パスワード処理
 
 
 
 
 )}
            Spacer()
   // .navigationBarTitle("PassView")
        }
            
    }
}
