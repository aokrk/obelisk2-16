//
//  ContentView.swift
//  obelisk2
//
//  Created by 青木陸 on 2021/02/25.
//

import SwiftUI
import UIKit
import Foundation



struct ContentView: View {

    @State private var isActive = false
    
    
    var body: some View {
        
        NavigationView {
            
            GeometryReader{geometry in
                let width = geometry.size.width
                
                ZStack {
                    Color.blue.edgesIgnoringSafeArea(.all)
                    
                    VStack {
                        

                            
 NavigationLink(destination: SecondView(isContentViewActive: $isActive), isActive: $isActive ) {
                                            Button(action: {
                                                self.isActive = true
                                              
                                            }
                            
                            ) {Image("ONにする").resizable().frame(width: width, height: width, alignment: .center)
                            }
                        }
                    }
                }
                
            }
                  
            .navigationBarTitle("obelisk", displayMode: .inline)
            .navigationBarBackButtonHidden(true)
    }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}







