//
//  KlapzSdkIOSApp.swift
//  Shared
//
//  Created by Kakashi on 27/09/21.
//

import SwiftUI

//@main
//struct KlapzSdkIOSApp: App {
//    var body: some Scene {
//        WindowGroup {
//            ContentView()
//        }
//    }
//}


import UIKit
import BottomSheet

@UIApplicationMain
class KlapzSdkIOSApp: UIResponder, UIApplicationDelegate, BottomSheetPresenter {
  var window: UIWindow?
  
let jsonObject: [String: Any] = [
    "key": 1,
    
]
    
  let bottomSheetTransitioningDelegate = BottomSheetTransitioningDelegate()

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    window = UIWindow(frame: UIScreen.main.bounds)
    window?.rootViewController = KlapzController(KlapbConfig:jsonObject)
    window?.makeKeyAndVisible()
    return true
  }
}
