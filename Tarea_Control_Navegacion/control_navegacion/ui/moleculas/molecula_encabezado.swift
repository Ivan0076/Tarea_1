//
//  molecula_encabezado.swift
//  control_navegacion
//
//  Created by alumno on 9/29/25.
//
import SwiftUI
import SceneKit


struct Encabezado: View {
    var publicacion: Publicacion = Publicacion(
            userId: 1, id: 1, title: "Título de Publicación de Ejemplo", body: "Este es el cuerpo de la publicación. Es un texto más largo para probar el límite de dos líneas de la vista previa."
        )
        
        var body: some View {
            HStack(alignment: .top, spacing: 15){
                
                Image(systemName: "doc.text.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25, height: 25)
                    .foregroundColor(.blue)
                    .padding(.top, 2)
                
                VStack(alignment: .leading, spacing: 3){
                    
                    // Título
                    Text(publicacion.title)
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                    
                    // Cuerpo
                    Text(publicacion.body)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                }
                
                Spacer()
            }
            .padding(15)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(color: .black.opacity(0.1), radius: 3, x: 0, y: 1)
            .padding(.horizontal, 10)
            .padding(.vertical, 4)
        }
    }

    #Preview {

        NavigationStack {
            List {
                Encabezado()
                Encabezado(publicacion: Publicacion(
                    userId: 2, id: 2, title: "Título de una segunda Noticia más largo para probar el límite de texto", body: "Este es el cuerpo de la publicación más larga, y ocupa exactamente dos líneas de resumen."
                ))
            }
            .listStyle(.plain)
        }
    }
