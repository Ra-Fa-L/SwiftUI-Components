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
    @State private var selectedIndex: Int = 0
    // Has to be a @State
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 52.407, longitude: 16.929), span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1))
    
    private let items = [
        "Pin", "MapMarker", "MapAnnotation"
    ]
    private let places = [
        Place(name: "Poznan", latitude: 51.9407, longitude: 16.959),
        Place(name: "Poznan 2", latitude: 52.0317, longitude: 16.999),
        Place(name: "Poznan3", latitude: 52.1487, longitude: 16.839)
    ]
    
    var body: some View {
        ZStack {
            switch selectedIndex {
            case 0:
                Map(coordinateRegion: $region, annotationItems: places) { place in
                    MapPin(coordinate: place.coordinate, tint: .black)
                }
            case 1:
                Map(coordinateRegion: $region, annotationItems: places) { place in
                    MapMarker(coordinate: place.coordinate, tint: .red)
                }
            default: // 2
                Map(coordinateRegion: $region, annotationItems: places) { place in
                    MapAnnotation(coordinate: place.coordinate, anchorPoint: CGPoint(x: 0.5, y: 0.5)) {
                        Circle()
                            .strokeBorder(Color.red, lineWidth: 10)
                            .frame(width: 44, height: 44)
                    }
                }
            }
            
            VStack {
                SegmentedControlView(selectedItem: $selectedIndex, items: items)
                    .background(Color(red: 0.5, green: 0.5, blue: 0.5, opacity: 0.5))

                Spacer()
            }
        }
        .ignoresSafeArea(.all, edges: .bottom)
        .navTitle("Map")
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
