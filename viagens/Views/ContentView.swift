//
//  ContentView.swift
//  viagens
//
//  Created by Beto Alves on 26/03/20.
//  Copyright © 2020 Beto Alves. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.horizontalSizeClass) var hSizeClass
    
    var body: some View {
        NavigationView {
            GeometryReader { view in
                VStack {
                    HeaderView()
                        .frame(width: view.size.width,
                               height: self.hSizeClass == .compact ? 200 : 310,
                               alignment: .top)
                    
                    List(trips) { viagem in
                        NavigationLink(destination: MapaView(coordenada: viagem.localizacao).navigationBarTitle("Localização")) {
                            CelulaViagemView(viagem: viagem)
                        }
                    }.navigationBarTitle("")
                }
            }
            .edgesIgnoringSafeArea(.all)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
