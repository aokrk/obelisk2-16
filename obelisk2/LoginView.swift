import SwiftUI

struct LoginView: View {
    
    @EnvironmentObject var model: Model
    @Environment(\.presentationMode) var presentationMode
    
    
    @State var inputEmail: String = ""
    @State var inputPassword: String = ""

    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                Text("IDを設定")
                    .font(.system(size: 48,
                                  weight: .heavy))

                VStack(spacing: 24) {
                    TextField("IDを設定　英数15文字以内", text: $inputEmail)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(maxWidth: 280)


                }
                .frame(height: 200)

                NavigationLink(destination: PassView(), isActive: self.$model.passViewPushed) {
                
                
                Button(action: {
                   print("Login処理")
                    
                    
                    self.model.passViewPushed = true
                    
           //         self.presentationMode.wrappedValue.dismiss()
                    
                    
                },
                
                
                
                label: {
                    Text("Login")
                        .fontWeight(.medium)
                        .frame(minWidth: 160)
                        .foregroundColor(.white)
                        .padding(12)
                        .background(Color.accentColor)
                        .cornerRadius(8)
                })
                
                }
                
                
                

                Spacer()
            }
            .navigationBarTitle("obelisk", displayMode: .inline)
        }
        
    }
    
}





struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}


































