//
//  MapaView.swift
//  viagens
//
//  Created by Beto Alves on 28/03/20.
//  Copyright © 2020 Beto Alves. All rights reserved.
//

import SwiftUI
import MapKit

struct MapaView: UIViewRepresentable {
    
    var coordenada: CLLocationCoordinate2D
    
    func makeUIView(context: Context) -> MKMapView {
        return MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
        
        
        let span = MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        let region = MKCoordinateRegion(center: coordenada, span: span)
        
        uiView.setRegion(region, animated: true)
    }
}

struct MapaView_Previews: PreviewProvider {
    static var previews: some View {
        MapaView(coordenada: trips[0].localizacao)
    }
}

