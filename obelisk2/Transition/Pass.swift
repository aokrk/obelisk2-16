//
//  File.swift
//  obelisk2
//
//  Created by 青木陸 on 2021/03/02.
//

import Foundation
import SwiftUI

struct PassView: View {
    
    @EnvironmentObject var model: Model
    @Environment(\.presentationMode) var presentationMode
    
    @State var inputEmail: String = ""
    @State var inputPassword: String = ""

    var body: some View {
    //    NavigationView {
            VStack(alignment: .center) {
                Text("パスワードを設定")
                    .font(.system(size: 48,
                                  weight: .heavy))

                VStack(spacing: 24) {
//                    TextField("IDを設定　英数15文字以内", text: $inputEmail)
//                        .textFieldStyle(RoundedBorderTextFieldStyle())
//                        .frame(maxWidth: 280)

                    SecureField("パスワードを設定 全角半角", text: $inputPassword)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(maxWidth: 280)

                }
                .frame(height: 200)

                NavigationLink(destination: IconView(), isActive: self.$model.iconViewPushed) {
                
                
                Button(action: {
                   print("Login処理")
                    
                    
                    self.model.iconViewPushed = true
                    
                //    self.presentationMode.wrappedValue.dismiss()
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
    //    }
        
    }
    
}




struct PassView_Previews: PreviewProvider {
    static var previews: some View {
        PassView()
    }
}













