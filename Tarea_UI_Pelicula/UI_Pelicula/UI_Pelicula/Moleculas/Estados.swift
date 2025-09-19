//
//  Estados.swift
//  UI_Pelicula
//
//  Created by alumno on 9/19/25.
//

import SwiftUI

struct Estado: View {
    let estado: String
    
    var body: some View {
        Text(etiquetaEstado)
            .bold()
            .foregroundColor(colorEstado)
            .frame(width: 80, alignment: .center)
            .fontDesign(.monospaced)
    }
    
    private var colorEstado: Color {
        switch estado {
        case "Ok": return .green
        case "Alert": return .yellow
        case "Danger": return .red
        default: return .gray
        }
    }
    
    private var etiquetaEstado: String {
        switch estado {
        case "Ok": return "Ok"
        case "Alert": return "Alerta"
        case "Danger": return "Peligro"
        default: return estado
        }
    }
}

#Preview {
    Estado(estado: "Ok")
}
