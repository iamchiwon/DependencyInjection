//
//  ViewController.swift
//  DISample
//
//  Created by iamchiwon on 2017. 4. 4..
//  Copyright © 2017년 makecube. All rights reserved.
//

import UIKit

protocol SampleInteractorPtorocol {
  func doSomething()
}

class ViewController: UIViewController {


  lazy var interactor = Configurator.shared.inject(type: SampleInteractorPtorocol.self)

  override func viewDidLoad() {
    super.viewDidLoad()

    interactor?.doSomething()
  }

}

