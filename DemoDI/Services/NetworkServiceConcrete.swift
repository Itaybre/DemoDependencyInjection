//
//  NetworkServiceConcrete.swift
//  DemoDI
//
//  Created by ITAY BRENNER WERTHEIN on 4/3/21.
//

import Foundation

class NetworkServiceConcrete: NetworkService {
    func getEmpleados() -> [String] {
        return ["Pablo", "Jose", "Santiago"]
    }
}
