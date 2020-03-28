//
//  HeaderView.swift
//  viagens
//
//  Created by Beto Alves on 27/03/20.
//  Copyright © 2020 Beto Alves. All rights reserved.
//

import SwiftUI

struct HeaderView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        GeometryReader { view in
            VStack {
                
                VStack {
                   Text("alura viagens")
                       .foregroundColor(Color.white)
                       .font(.custom("Avenir Black",
                                     size: self.horizontalSizeClass == .compact ? 20 : 30))
                    .padding(.top, self.horizontalSizeClass == .compact ? 50 : 90)
                   Text("ESPECIAL")
                       .foregroundColor(Color.white)
                       .font(.custom("Avenir Book",
                                     size: self.horizontalSizeClass == .compact ? 23 : 30))
                       .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                       .padding(.leading, 30)
                   Text("BRASIL")
                       .foregroundColor(Color.white)
                       .font(.custom("Avenir Black",
                                     size: self.horizontalSizeClass == .compact ? 23 : 30))
                       .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                       .padding(.leading, 30)
               }
               .frame(width: view.size.width,
                      height: self.horizontalSizeClass == .compact ? 200 : 310,
                      alignment: .top)
               .background(Color.purple)
               
               HStack {
                   Button(action: {}) {
                       Text("Hotéis")
                           .font(.custom("Avenir Medium",
                                         size: self.horizontalSizeClass == .compact ? 17 : 30))
                           .foregroundColor(.white)
                   }
                   .frame(width: self.horizontalSizeClass == .compact ? 115 : 150,
                          height: self.horizontalSizeClass == .compact ? 50 : 75)
                   .background(Color.blue)
                   .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 10))
                   .offset(x: self.horizontalSizeClass == .compact ? 50 : view.size.width / 4)
                   
                   Spacer()
                   
                   Button(action: {}) {
                       Text("Pacotes")
                           .font(.custom("Avenir Medium",
                                         size: self.horizontalSizeClass == .compact ? 17 : 30))
                           .foregroundColor(.white)
                   }
                   .frame(width: self.horizontalSizeClass == .compact ? 115 : 150,
                          height: self.horizontalSizeClass == .compact ? 50 : 75)
                   .background(Color.orange)
                   .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 10))
                   .offset(x: self.horizontalSizeClass == .compact ? -50 : -(view.size.width / 4))
               }
               .offset(y: self.horizontalSizeClass == .compact ? -25 : -37.5)
            }
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
