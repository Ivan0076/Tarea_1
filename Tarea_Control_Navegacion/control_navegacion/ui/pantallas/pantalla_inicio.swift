//
//  pantalla_inicio.swift
//  control_navegacion
//
//  Created by alumno on 9/29/25.
//
import SwiftUI


struct PantallaInicio: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 30) {
                Text("Bienvenidos al Himalaya")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.teal)
                    .padding(.bottom, 20)
                
                NavigationLink {
                    PantallaConfiguracion()
                } label: {
                    Text("Ir a pantalla configuración")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: 300)
                        .background(Color(hue: 0.653, saturation: 0.629, brightness: 0.36))
                        .cornerRadius(10)
                        .shadow(radius: 5)
                }
                NavigationLink {
                    PantallaGaleria()
                } label: {
                    Text("Ir a pantalla galería")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: 300)
                        .background(Color(hue: 0.536, saturation: 1.0, brightness: 0.698))
                        .cornerRadius(10)
                        .shadow(radius: 5)
                }
                
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    PantallaInicio()
}
