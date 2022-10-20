//
//  Location.swift
//  ToDoApp(Unit tests)
//
//  Created by Алексей Моторин on 20.10.2022.
//

import Foundation
import CoreLocation

struct Location {
    let name: String
    let coordinate: CLLocationCoordinate2D?
    
    init(name: String, coordinate: CLLocationCoordinate2D? = nil) {
        self.name = name
        self.coordinate = coordinate
    }
}

extension Location: Equatable {
    static func == (lhs: Location, rhs: Location) -> Bool {
        guard
            rhs.coordinate?.longitude == lhs.coordinate?.longitude,
            rhs.coordinate?.latitude == lhs.coordinate?.latitude,
            rhs.name == lhs.name else { return false}
            return true
    }
}
