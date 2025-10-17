//
//  ui_navegacion.swift
//  control_navegacion
//
//  Created by alumno on 9/29/25.
//

import SwiftUI

enum Pestañas{
    case Configuracion
    case Galeria
    case Noticias
    case Inicio
}

struct NavegacionPrincipal: View {
    @State var pestaña_actual: Pestañas = .Inicio
    var body: some View{
        TabView(selection: $pestaña_actual){
            Tab("Inicio", systemImage: "play", value: .Inicio){
                NavigationStack {
                    PantallaInicio()
                }
            }
            
            Tab("Noticias", systemImage: "newspaper", value: .Inicio){
                NavigationStack {
                    PantallaNoticias()
                }
            }
            .badge(noticias.count)
            
            Tab("Galeria", systemImage: "photo.artframe", value: .Inicio){
                NavigationStack {
                    PantallaGaleria()
                }
            }
            .badge("NOVEDAD")
            
            Tab("Configuracion", systemImage: "gear", value: .Inicio){
                NavigationStack {
                    PantallaConfiguracion()
                }
            }
        }
    }
}

#Preview {
    let controlador = ControladorGeneral()
    
    NavegacionPrincipal()
        .environment(controlador)
}

