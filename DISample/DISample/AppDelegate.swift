//
//  AppDelegate.swift
//  DISample
//
//  Created by iamchiwon on 2017. 4. 4..
//  Copyright © 2017년 makecube. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

    Configurator.shared.regist(type: SampleInteractorPtorocol.self, instance: SampleInteractor())

    return true
  }

}

