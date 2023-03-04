//
//  LocationManager.swift
//  Vandrouka
//
//  Created by Arseni Laputska on 31.01.23.
//

import Foundation
import CoreLocation
import MapKit

final class LocationManager: NSObject, ObservableObject {
    private let locationManager = CLLocationManager()
    
    @Published var location: CLLocationCoordinate2D?
    @Published var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 53.222635, longitude: 26.692563), span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02))
    
    override init() {
        super.init()
        locationManager.delegate = self
    }
    
    func requestLocation() {
        locationManager.requestLocation()
    }
    
    func requestAuthorization() {
        locationManager.requestWhenInUseAuthorization()
    }
}

extension LocationManager: CLLocationManagerDelegate {
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        switch manager.authorizationStatus {
            case .notDetermined:
                print("Not Determined")
            case .restricted:
                print("Restricted")
            case .denied:
                print("Denied")
            case .authorizedAlways:
                manager.requestLocation()
            case .authorizedWhenInUse:
                manager.requestLocation()
            @unknown default:
                break
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.first else { return }
        
        DispatchQueue.main.async {
            self.location = location.coordinate
            self.region = MKCoordinateRegion(center: location.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02))
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Error location: \(error.localizedDescription)")
    }
}
