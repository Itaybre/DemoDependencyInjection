//
//  ViewController.swift
//  DemoDI
//
//  Created by ITAY BRENNER WERTHEIN on 4/3/21.
//

import UIKit
import Resolver

class ViewController: UIViewController {
    
    var empleado: EmpleadoMeli = Resolver.resolve()
//    @Injected var empleado: EmpleadoMeli
    
    @Injected(name: .singleton) var singleton: EmpleadoMeli
    
    // Ejemplo Optional
//    var empleadoOpt: EmpleadoMeli? = Resolver.optional()
    
    // Ejemplo Lazy
//    @LazyInjected var empleadoLazy: EmpleadoMeli
    
    // Con nombre
    @Injected(name: .itay) var itay: EmpleadoMeli
    
    @Injected var service: NetworkService

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        empleado.trabajar()
        
        itay.trabajar()
        
        singleton.setVal(name: "Pablo 1")
        
        print("Empleados: \(empleados())")
    }

    func empleados() -> [String] {
        return service.getEmpleados()
    }
}

