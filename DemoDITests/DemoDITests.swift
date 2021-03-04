//
//  DemoDITests.swift
//  DemoDITests
//
//  Created by ITAY BRENNER WERTHEIN on 4/3/21.
//

import XCTest
import Resolver
@testable import DemoDI

class DemoDITests: XCTestCase {
    
    func testNotInjected() throws {
        // Resolver lacks a way to undo testing registrations, so we set to the original
        Resolver.register { NetworkServiceConcrete() }
            .implements(NetworkService.self)
        
        let viewController = ViewController()
        
        let empleados = viewController.empleados()
        
        XCTAssertEqual(empleados, ["Pablo", "Jose", "Santiago"])
    }

    func testInjected() throws {
        Resolver.register { MockService() }
            .implements(NetworkService.self)
        
        let viewController = ViewController()
        
        let empleados = viewController.empleados()
        
        XCTAssertEqual(empleados, ["Manuel"])
    }

    class MockService: NetworkService {
        func getEmpleados() -> [String] {
            return ["Manuel"]
        }
    }
}
