//
//  CelulaViagemView.swift
//  viagens
//
//  Created by Beto Alves on 27/03/20.
//  Copyright © 2020 Beto Alves. All rights reserved.
//

import SwiftUI

struct CelulaViagemView: View {
    
    @Environment(\.horizontalSizeClass) var hSizeClass
    
    var viagem: Viagem 
    var body: some View {
        
        VStack(alignment: .leading) {
            Text(viagem.titulo)
                .font(.custom("Avenir",
                              size: self.hSizeClass == .compact ? 14 : 24))
            Image(viagem.imagem)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: self.hSizeClass == .compact ? 125 : 200)
                .clipped()
            
            HStack {
                Text(viagem.quantidadeDeDias)
                    .font(.custom("Avenir",
                                  size: self.hSizeClass == .compact ? 14 : 24))
                
                Spacer()
                
                Text(viagem.valor)
                    .font(.custom("Avenir",
                              size: self.hSizeClass == .compact ? 14 : 24))
            }
        }
    }
}

struct CelulaViagemView_Previews: PreviewProvider {
    static var previews: some View {
        CelulaViagemView(viagem: trips[0])
    }
}
