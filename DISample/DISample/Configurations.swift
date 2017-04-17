//
//  Configurations.swift
//  DISample
//
//  Created by iamchiwon on 2017. 4. 4..
//  Copyright © 2017년 makecube. All rights reserved.
//

import Foundation

func configure() {
  let config = Configurator.shared

  config.regist(type: SampleInteractorPtorocol.self, instance: SampleInteractor())
}
