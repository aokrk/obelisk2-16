//
//  modal.swift
//  obelisk2
//
//  Created by 青木陸 on 2021/03/20.
//

//
//  modal.swift
//  navi
//
//  Created by 青木陸 on 2021/03/19.
//

import Foundation

import SwiftUI

struct PresentingModalKey: EnvironmentKey {
    
    static let defaultValue = Binding<Bool>.constant(false)
    
}

extension EnvironmentValues {
    var isFirstLaunch: Binding<Bool> {
        get {
            return self[PresentingModalKey.self]
        }
        set {
            self[PresentingModalKey.self] = newValue
        }
    }
}
