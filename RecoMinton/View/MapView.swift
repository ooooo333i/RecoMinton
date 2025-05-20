//
//  MapView.swift
//  RecoMinton
//
//  Created by ooooo333i on 7/11/24.
//

import SwiftUI
import MapKit

//지도 보여주기 일단 보류

//망원 나들목 37.553103, 126.900268
//마포 구민 37.556741, 126.896852
//성미산 37.562407, 126.912073
//마곡 37.573267, 126.831274

struct MapView: View {
    
    var coordinate : CLLocationCoordinate2D
    
    var body: some View {
        Map(position: .constant(.region(region)))
    }
    private var region: MKCoordinateRegion{
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)
        )
    }
}

#Preview {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 37.5624077, longitude: 126.912073))
}
