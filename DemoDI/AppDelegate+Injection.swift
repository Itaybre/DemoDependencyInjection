//
//  AppDelegate+Injection.swift
//  DemoDI
//
//  Created by ITAY BRENNER WERTHEIN on 4/3/21.
//

import Foundation
import Resolver

extension Resolver.Name {
    static let itay = Self("Itay")
    static let singleton = Self("Singleton")
}

extension Resolver: ResolverRegistering {
    public static func registerAllServices() {
        register { Pablo() }
                    .implements(EmpleadoMeli.self)
            
        register(name: .singleton) { EmpleadoSingleton() as EmpleadoMeli }
            .scope(ResolverScope.application)
        
        register(name: .itay) { Itay() as EmpleadoMeli }
        
        register{ NetworkServiceConcrete() }
            .implements(NetworkService.self)
    }
}
