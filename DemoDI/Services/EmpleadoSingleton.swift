//
//  EmpleadoSingleton.swift
//  DemoDI
//
//  Created by ITAY BRENNER WERTHEIN on 4/3/21.
//

import Foundation

class EmpleadoSingleton: EmpleadoMeli {
    var value: String = ""
    
    func trabajar() {
        print("Tiene 800 reuniones...")
    }
    
    func setVal(name: String) {
        print("Valor viejo es \(value), nuevo: \(name)")
        value = name
    }
}
