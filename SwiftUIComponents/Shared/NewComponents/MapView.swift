//
//  MapView.swift
//  SwiftUIComponents (iOS)
//
//  Created by Rafal Padberg on 09/05/2021.
//

import SwiftUI
// MapKit framework contains SwiftUI Views
import MapKit

struct MapView: View {
    private let places = [
        Place(name: "Poznan", latitude: 52.0407, longitude: 16.929)
    ]
    
    // Has to be a @State
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 52.407,
            longitude: 16.929),
        span: MKCoordinateSpan(
            latitudeDelta: 1,
            longitudeDelta: 1))

        var body: some View {
            ZStack {
                Map(coordinateRegion: $region, annotationItems: places) { place in
//                    MapPin(coordinate: place.coordinate, tint: .black)
//                    MapMarker(coordinate: place.coordinate, tint: .red)
                    MapAnnotation(coordinate: place.coordinate, anchorPoint: CGPoint(x: 0.5, y: 0.5)) {
                        Circle()
                            .strokeBorder(Color.red, lineWidth: 10)
                            .frame(width: 44, height: 44)
                    }
                }
            }
            .ignoresSafeArea(.all)
        }
}

struct Place: Identifiable {
    let id = UUID()
    let name: String
    let latitude: Double
    let longitude: Double
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
