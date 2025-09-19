//
//  ListaDinos.swift
//  UI_Pelicula
//
//  Created by alumno on 9/19/25.
//

import SwiftUI

struct ListaDinos: View {
    let especie: String
    let esperado: Int
    let encontrado: Int
    let estado: String
    
    var body: some View {
        HStack {
            Text(especie)
                .frame(width: 150, alignment: .leading)
            
            Text("\(esperado)")
                .frame(width: 80, alignment: .center)
            
            Text("\(encontrado)")
                .frame(width: 60, alignment: .center)
            
            Estado(estado: estado)
        }
        .fontDesign(.monospaced)
        .foregroundColor(.green)
        .padding(.vertical, 2)
    }
}

#Preview {
    ListaDinos(especie: "Tyrannosaurus", esperado: 2, encontrado: 1, estado: "Danger")
}
