
//  WorkThroughView.swift
//  WorkThroughView
//
//  Created by あらさん on 2020/10/19.
//

import SwiftUI
import Foundation





struct WorkThroughView: View {
    var body: some View {




        VStack {


            Spacer()


            DoneButton()


        }

        .padding(EdgeInsets(top: 100, leading: 30, bottom: 50, trailing: 35))


    }

}




struct WorkThroughView_Previews: PreviewProvider {

    var isLaunch = true
    static var previews: some View {

        Group {

            WorkThroughView()

        }

    }

}
//ボタンに関する設定

struct DoneButton: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            Text("続ける")
                .bold()
                .foregroundColor(.white)
                .frame(minWidth: 0, maxWidth: .infinity)
        }
        .padding([.top, .bottom], 15)
        .background(Color.blue)
        .cornerRadius(10)
    }
}



struct DoneButton_Preview: PreviewProvider {
    static var previews: some View {
        Group {
            DoneButton()
                .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
        }
    }
}


