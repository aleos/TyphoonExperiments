//
//  Assembly.swift
//  TyphoonExperiments
//
//  Created by Alexander Ostrovsky on 01.11.16.
//  Copyright © 2016 Alexander Ostrovsky. All rights reserved.
//

import Foundation

import Typhoon

class Assembly: TyphoonAssembly {
    func appDelegate() -> Any {
        return TyphoonDefinition.withClass(AppDelegate.self) { definition in
            definition?.injectProperty(#selector(getter: AppDelegate.startUpConfigurator))
        }
    }
    
    func startUpConfigurator() -> Any {
        return TyphoonDefinition.withClass(StartUpConfigurator.self)
    }
}
