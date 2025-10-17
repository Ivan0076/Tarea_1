//
//  pantalla_perfil.swift
//  control_navegacion
//
//  Created by alumno on 10/10/25.
//

import SwiftUI

struct PantallaPerfil: View {
    var usuario: Usuario
    
    var body: some View {
            ScrollView {
                VStack(spacing: 30) {
                    
                    // Sección de Perfil y Nombre
                    VStack(spacing: 5) {
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .frame(width: 120, height: 120)
                            .foregroundColor(.blue)
                            .clipShape(Circle())
                            .shadow(radius: 5)
                            .padding(.bottom, 10)
                        
                        Text(usuario.name)
                            .font(.title)
                            .fontWeight(.heavy)
                        
                        Text("@\(usuario.username)")
                            .font(.headline)
                            .foregroundColor(.secondary)
                    }
                    
                    // Tarjeta 1: Información Personal
                    VStack(alignment: .leading, spacing: 15) {
                        Text("Información Personal")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(.primary)
                            .padding(.bottom, 5)
                        
                        // Fila Nombre
                        HStack {
                            Text("Nombre:")
                                .fontWeight(.medium)
                            Spacer()
                            Text(usuario.name)
                                .foregroundColor(.secondary)
                        }
                        
                        // Fila Usuario
                        HStack {
                            Text("Usuario:")
                                .fontWeight(.medium)
                            Spacer()
                            Text("@\(usuario.username)")
                                .foregroundColor(.secondary)
                        }
                        
                        // Fila Email
                        HStack {
                            Text("Email:")
                                .fontWeight(.medium)
                            Spacer()
                            Text(usuario.email)
                                .foregroundColor(.secondary)
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(15)
                    
                    // Tarjeta 2: Dirección 
                    VStack(alignment: .leading, spacing: 15) {
                        Text("Dirección")
                            
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(.primary)
                            .padding(.bottom, 5)
                        
                        // Fila Ciudad
                        HStack {
                            Text("Ciudad:")
                                .fontWeight(.medium)
                            Spacer()
                            Text(usuario.address.city)
                                .foregroundColor(.secondary)
                        }
                        
                        // Fila Calle
                        HStack {
                            Text("Calle:")
                                .fontWeight(.medium)
                            Spacer()
                            Text(usuario.address.street)
                                .foregroundColor(.secondary)
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(15)
                    
                    Spacer()
                }
                .padding()
            }
            .background(Color(.systemGroupedBackground))
            .navigationTitle("Perfil de Usuario")
            .navigationBarTitleDisplayMode(.inline)
        }
    }

    #Preview {
        NavigationView {
            PantallaPerfil(usuario: Usuario(
                id: 1,
                name: "Leanne Graham",
                username: "Bret",
                email: "Sincere@april.biz",
                address: Address(street: "Kulas Light", city: "Gwenborough")
            ))
        }
    }
