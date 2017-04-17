//
//  DependancyInjector.swift
//  DISample
//
//  Created by iamchiwon on 2017. 4. 4..
//  Copyright © 2017년 makecube. All rights reserved.
//

import Foundation

class Configurator {

  static let shared = Configurator()
  private init() {
    registered = [:]
  }

  private var registered: [String: Any]

  func inject<T>(type: T.Type) -> T? {
    let typeName = String(describing: type)
    if let instance = registered[typeName] {
      return instance as? T
    }
    return nil
  }

  func regist<T>(type: T.Type, instance: T?) {
    guard let instance = instance else {
      return
    }

    let typeName = String(describing: type)
    registered[typeName] = instance
  }

  func regist<T>(type: T.Type, code: () -> T) {
    regist(type: type, instance: code())
  }
}

