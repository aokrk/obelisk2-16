//
//  IconView.swift
//  obelisk2
//
//  Created by 青木陸 on 2021/03/02.
//

import SwiftUI
import UIKit


struct IconView: View {
    
    @EnvironmentObject var model: Model
    @Environment(\.presentationMode) var presentationMode
    
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
        NavigationLink(destination: ContentView(), isActive: self.$model.contentViewPushed) {
        Button(action: {
           print("Login処理")
            
         //  self.model.contentViewPushed = true
            self.presentationMode.wrappedValue.dismiss()
            
            
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
}
}

struct IconView_Previews: PreviewProvider {
    static var previews: some View {
        
        IconView()
        
    }
    
}
