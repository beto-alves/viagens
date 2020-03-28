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
        GeometryReader { view in
            VStack {
                HeaderView()
                    .frame(width: view.size.width,
                           height: self.hSizeClass == .compact ? 200 : 310,
                           alignment: .top)
                
                List(trips) { viagem in
                    CelulaViagemView(viagem: viagem)
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
