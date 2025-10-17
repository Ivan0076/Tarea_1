//
//  pantalla_publicacion.swift
//  control_navegacion
//
//  Created by alumno on 8/10/25.
//
import SwiftUI

struct PantallaPublicacion: View {
    @Environment(ControladorGeneral.self) var controlador
    
    var publicacion_actual: Publicacion
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                
                // Sección de Título y Autor
                VStack(alignment: .leading, spacing: 5) {
                    Text(publicacion_actual.title)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    if let autor = controlador.obtener_usuario(para: publicacion_actual.userId) {
                        NavigationLink(destination: PantallaPerfil(usuario: autor)) {
                            HStack(spacing: 4) {
                                Text("Por:")
                                    .font(.headline)
                                    .foregroundColor(.secondary)
                                
                                Text(autor.name)
                                    .font(.headline)
                                    .fontWeight(.bold)
                                    .foregroundColor(.blue)
                            }
                        }
                    } else {
                        // Texto de fallback si el usuario no se encuentra (aún cargando, etc.)
                        Text("Por: Usuario Desconocido")
                            .font(.headline)
                            .foregroundColor(.secondary)
                    }
                }
                .padding(.bottom, 10)
                
                // Resto del contenido (Body y Comentarios)
                Divider()
                
                Text(publicacion_actual.body)
                    .font(.body)
                    .lineSpacing(4)
                
                Divider()
                
                Text("Comentarios (\(controlador.comentarios.count))")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                VStack(alignment: .leading, spacing: 15) {
                    if controlador.comentarios.isEmpty {
                        Text("Cargando comentarios...")
                            .foregroundColor(.gray)
                    } else {
                        ForEach(controlador.comentarios) { comentario in
                            VStack(alignment: .leading, spacing: 5) {
                                Text(comentario.email)
                                    .font(.subheadline)
                                    .fontWeight(.bold)
                                    .foregroundColor(.blue)
                                Text(comentario.body)
                                    .font(.caption)
                            }
                            .padding(10)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color(.systemGray6))
                            .cornerRadius(8)
                        }
                    }
                }
            }
            .padding()
            .onAppear {
                controlador.publicacion_seleccionada(publicacion_actual.id)
            }
        }
        .navigationTitle("Publicación")
        .navigationBarTitleDisplayMode(.inline)
    }
}
#Preview {
    PantallaPublicacion(publicacion_actual: Publicacion(userId: 1, id: 1, title: "Título de Ejemplo", body: "Este es el cuerpo de la publicación, con un texto más largo para probar el formato."))
        .environment(ControladorGeneral())
}
