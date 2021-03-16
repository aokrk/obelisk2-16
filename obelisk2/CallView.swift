//
//  CallView.swift
//  obelisk2
//
//  Created by 青木陸 on 2021/02/26.
import SwiftUI

struct CallView: View {
    
   // @EnvironmentObject var model: Model
    
    
    
    @Binding var isContentViewActive: Bool
    
    var body: some View {
        
        
        
        
        GeometryReader{geometry in
            let Width = geometry.size.width
            let Height = geometry.size.height
            let ScreenArea = Width*Height
            
            ZStack (alignment: .top ){
                Color.blue.edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 1) {
                    Image("IconSample").resizable().frame(width: Width, height: Width, alignment: .top )
                    
                    
                    
                    Text("ID").font(.largeTitle).fontWeight(.heavy).frame(alignment: .top)
                    
                    
             
               }
                
                
                Spacer()
                VStack(spacing: 1) {
                    
                    Spacer()
                    
                    
                    
                    let iPhonewidthDifference =  ScreenArea / Height / 0.92
                    let CallButtonSize = iPhonewidthDifference  / 3.75
                    
                    
                    
                    HStack {
                        Spacer()
                        Button(action: {
                            // self.model.secondViewPushed = false
                        })
                        {Image("SpeakerButton").resizable().frame(width: CallButtonSize, height: CallButtonSize)
                        }
                        
                        Spacer()
                        
                        
                        Button(action: {
                            
                        })
                        {Image("MuteBotton").resizable().frame(width: CallButtonSize, height: CallButtonSize)
                        }
                        Spacer()
                    }
                    
                    
                    
                    Button(action: {
                        
                        self.isContentViewActive = false

                    })
                    {Image("back").resizable().frame(width: Width , height: Height/8.8, alignment: .bottom)
                        
                    }
                }
                
                
                
            }
            
            
        }
        .navigationBarTitle("obelisk",displayMode: .automatic)
        .navigationBarBackButtonHidden(true)
  
}
}














//
//struct CallView_Previews: PreviewProvider {
//    static var previews: some View {
//        CallView()
//    }
//}




