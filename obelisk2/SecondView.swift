//
//  SecondView.swift
//  obelisk2
//
//  Created by 青木陸 on 2021/02/25.
//

import Foundation
import UIKit
import SwiftUI

struct SecondView: View {
   // @EnvironmentObject var model: Model
       @State private var isActive = false
        @Binding var isContentViewActive: Bool
    
    var body: some View {
        
       
        
        
        GeometryReader{geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            
            ZStack {
                Color.blue.edgesIgnoringSafeArea(.all)
                
                Image("ON").resizable().frame(width: width, height: width, alignment: .center )
                
                
            
                
                
                
                NavigationLink(destination: CallView(isContentViewActive: $isContentViewActive), isActive: $isActive) {
                         Button(action: {
                             self.isActive = true
                         }, label: {
                             Text("アクションをサーバから受け取るからここはボタンではない")
                         })
                     }.isDetailLink(false)
                
                
                
                    VStack(alignment: .center, spacing: 0)    {
                        Spacer()
                        Button(action: {
                           // self.model.secondViewPushed = false
                          //  self.isActive = false
                            
                            
                            self.isContentViewActive = false
                        })
                        {Image("back").resizable().frame(width: width , height: height/8.8, alignment: .bottom)
                        }
                        
                        
                        
                    }
                    
        
                
                
                
                
                
                
                
                
            }
            
        }
        
        .navigationBarTitle("obelisk",displayMode: .automatic)
        .navigationBarBackButtonHidden(true)
    }
}








//
//struct SecondView_Previews: PreviewProvider {
//    static var previews: some View {
//        SecondView()
//    }
//}



















































