//
//  SceneDelegate.swift
//  obelisk2
//
//  Created by 青木陸 on 2021/02/25.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    
    @AppStorage("isFirstLaunch") var isFirstLaunch = true

    var window: UIWindow?

   
    
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        
        let window = UIWindow(frame: UIScreen.main.bounds)
                window.rootViewController = UIHostingController(rootView: ContentView())
                self.window = window
                window.makeKeyAndVisible()
    
        
        
//
//        let  Login = LoginView().environmentObject(Model())
//        let Content = ContentView().environmentObject(Model())
//
//        if isFirstLaunch {
//
//
//
//        } else {
//
//            let contentView = ContentView()
//                            }
//
        
    //    let contentView =
         //   RootView()
        
        
    
        let contentView = ContentView() .sheet(isPresented: $isFirstLaunch) {
            LoginView()
        }
           .environmentObject(Model())
        
        
        // Use a UIHostingController as window root view controller.
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: contentView)
            self.window = window
            window.makeKeyAndVisible()
        }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
     
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {    }

    func sceneWillEnterForeground(_ scene: UIScene) {
       
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
    }


}

