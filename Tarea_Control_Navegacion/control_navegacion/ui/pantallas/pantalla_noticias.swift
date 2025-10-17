//
//  pantalla_noticias.swift
//  control_navegacion
//
//  Created by alumno on 9/29/25.
//

import SwiftUI

struct PantallaNoticias: View {
    @State var lista_noticias = noticias
    @Environment(ControladorGeneral.self) var controlador
    
    var body: some View {
        if(controlador.publicaciones.isEmpty){
            Text("Estamos descargando los datos, por favor espera.")
        }
        else{
            NavigationStack{
                ScrollView{
                    LazyVStack{
                        ForEach(controlador.publicaciones) { publicacion in
                            
                            NavigationLink{
                                PantallaPublicacion(publicacion_actual: publicacion)
                            } label: {
                                Encabezado(publicacion: publicacion)
                            }
                            .buttonStyle(.plain)
                        }
                    }
                }
                .background(Color(.systemGroupedBackground))
            }
        }
    }

}

#Preview {
    PantallaNoticias()
        .environment(ControladorGeneral())
}
