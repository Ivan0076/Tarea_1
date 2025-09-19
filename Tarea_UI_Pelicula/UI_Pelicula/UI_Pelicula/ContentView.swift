//
//  ContentView.swift
//  UI_Pelicula
//
//  Created by alumno on 17/9/25.
//

import SwiftUI

struct Dinosaurio: Identifiable {
    let id = UUID()
    let especie: String
    let esperado: Int
    let encontrado: Int
    var estado: String {
        if encontrado == esperado {
            return "Ok"
        } else if encontrado < esperado / 2 {
            return "Danger"
        } else {
            return "Alert"
        }
    }
}

struct ContentView: View {
    let dinosaurios: [Dinosaurio] = [
        Dinosaurio(especie: "Tyrannosaurus", esperado: 2, encontrado: 1),
        Dinosaurio(especie: "Maiasaurus", esperado: 22, encontrado: 20),
        Dinosaurio(especie: "Stegosaurus", esperado: 4, encontrado: 1),
        Dinosaurio(especie: "Triceratops", esperado: 8, encontrado: 8),
        Dinosaurio(especie: "Velociraptors", esperado: 37, encontrado: 15),
        Dinosaurio(especie: "Apatosaurus", esperado: 17, encontrado: 27),
        Dinosaurio(especie: "Microceratops", esperado: 22, encontrado: 13)
    ]
    
    
    var body: some View {
        VStack {
            VStack {
                Text("JURASSIC PARK")
                Text("Species Management System")
            }
            .font(.system(size: 22, weight: .bold, design: .monospaced))
            .foregroundColor(.green)
            .shadow(color: .black, radius: 1, x: 1, y:1)
            
            Image("Mapa_Mejorado")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 350)
            
            VStack(alignment: .leading) {
                // Encabezado de la tabla
                HStack {
                    Text("Species").frame(width: 120, alignment: .leading)
                    Text("Expected").frame(width: 80, alignment: .center)
                    Text("Found").frame(width: 90, alignment: .center)
                    Text("Status").frame(width: 80, alignment: .center)
                }
                .fontDesign(.monospaced)
                .font(.subheadline)
                .bold()
                .padding(.bottom, 5)
                .foregroundColor(.green)
                
                Divider()
                
                // Filas de dinosaurios
                ForEach(dinosaurios) { dino in
                    ListaDinos(
                        especie: dino.especie,
                        esperado: dino.esperado,
                        encontrado: dino.encontrado,
                        estado: dino.estado
                    )
                }
            }
            .padding()
        }
        .background(Color(hue: 0.674, saturation: 0.947, brightness: 0.669))
    }

}

#Preview {
    ContentView()
}
