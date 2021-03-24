import SwiftUI


struct LoginView: View {
    
    
    @Environment (\.isFirstLaunch) var isPresentedModally
    @State private var isActive = false
   
    @State var inputEmail: String = ""
  
    
    var body: some View {
        
        NavigationView {
        
            VStack {
Text("ユーザーネームを設定").font(.system(size: 40,weight: .heavy))
        
TextField("ユーザーネームをここに入力　英数15文字以内", text:$inputEmail)
.textFieldStyle(RoundedBorderTextFieldStyle())
    
    
   
  
            
NavigationLink(destination: PassView(), isActive: $isActive ) {
Button(action: {self.isActive = true}, label: {Text("次へ")}

       //ID処理

)}
                Spacer()
           //.navigationBarTitle("LoginView")
        }
        }
        
        
        
    }
    
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
