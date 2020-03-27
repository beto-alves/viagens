//
//  CelulaViagemView.swift
//  viagens
//
//  Created by Beto Alves on 27/03/20.
//  Copyright © 2020 Beto Alves. All rights reserved.
//

import SwiftUI

struct CelulaViagemView: View {
    
    var viagem: Viagem 
    var body: some View {
        
        VStack(alignment: .leading) {
            Text(viagem.titulo)
            Image(viagem.imagem)
                .resizable()
                .frame(height: 125)
            
            HStack {
                Text(viagem.quantidadeDeDias)
                Spacer()
                Text(viagem.valor)
            }
        }
    }
}

struct CelulaViagemView_Previews: PreviewProvider {
    static var previews: some View {
        CelulaViagemView(viagem: trips[0])
    }
}
