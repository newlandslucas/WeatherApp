//
//  LocationManager.swift
//  WeatherApp
//
//  Created by Lucas Newlands on 18/04/22.
//

import Foundation
import CoreLocation

class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
    let manager = CLLocationManager()
    
    @Published var location: CLLocationCoordinate2D?
    @Published var isLoading = false
    
}
