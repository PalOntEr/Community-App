//
//  Home.swift
//  Community App
//
//  Created by MaciOSLabAir on 01/04/25.
//

import SwiftUI

struct Register: View {
    var body: some View {
        NavigationStack {
            ZStack() {
                ZStack() {
                    ZStack() {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 327, height: 56)
                            .background(.white)
                            .cornerRadius(16)
                            .overlay(
                                RoundedRectangle(cornerRadius: 16)
                                    .inset(by: 1)
                                    .stroke(Color(red: 0.09, green: 0.10, blue: 0.12), lineWidth: 1)
                            )
                            .offset(x: 0, y: 0)
                        HStack(spacing: 12) {
                            Label("Nombre Completo", systemImage: "person")
                                .font(Font.custom("Montserrat", size: 21).weight(.medium))
                                .lineSpacing(28)
                                .foregroundColor(Color(red: 0.09, green: 0.10, blue: 0.12))
                            Spacer()
                        }.padding(.leading, 16)
                            .offset(x: -4, y: 0)
                    }
                    .frame(width: 327, height: 56)
                    .offset(x: 0, y: -160)
                    ZStack() {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 327, height: 56)
                            .background(.white)
                            .cornerRadius(16)
                            .overlay(
                                RoundedRectangle(cornerRadius: 16)
                                    .inset(by: 1)
                                    .stroke(Color(red: 0.09, green: 0.10, blue: 0.12), lineWidth: 1)
                            )
                            .offset(x: 0, y: 0)
                        HStack(spacing: 12) {
                            Label("Correo Electrónico", systemImage: "envelope")
                                .font(Font.custom("Montserrat", size: 21).weight(.medium))
                                .lineSpacing(28)
                                .foregroundColor(Color(red: 0.09, green: 0.10, blue: 0.12))
                            Spacer()
                        }.padding(.leading, 16)
                            .offset(x: -4, y: 0)
                    }
                    .frame(width: 327, height: 56)
                    .offset(x: 0, y: -80)
                    ZStack() {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 327, height: 56)
                            .background(.white)
                            .cornerRadius(16)
                            .overlay(
                                RoundedRectangle(cornerRadius: 16)
                                    .inset(by: 1)
                                    .stroke(Color(red: 0.09, green: 0.10, blue: 0.12), lineWidth: 1)
                            )
                            .offset(x: 0, y: 0)
                        HStack(spacing: 12) {
                            Label("Password", systemImage: "lock")
                                .font(Font.custom("Montserrat", size: 21).weight(.medium))
                                .lineSpacing(28)
                                .foregroundColor(Color(red: 0.09, green: 0.10, blue: 0.12))
                            Spacer()
                        }.padding(.leading, 16)
                            .offset(x: -4, y: 0)
                    }
                    .frame(width: 327, height: 56)
                    .offset(x: 0, y: 0)
                    VStack(spacing: 10) {
                        HStack(spacing: 6) {
                            NavigationLink(destination: TermsAndConditions()){
                                Text("Siguiente")
                            }
                                .font(Font.custom("Montserrat", size: 21).weight(.heavy))
                                .lineSpacing(28)
                                .foregroundColor(Color(red: 0.09, green: 0.10, blue: 0.12))
                        }
                    }
                    .padding(16)
                    .frame(width: 327)
                    .background(Color(red: 1, green: 0.74, blue: 0.07))
                    .cornerRadius(16)
                    .overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .inset(by: 1)
                            .stroke(Color(red: 0.09, green: 0.10, blue: 0.12), lineWidth: 1)
                    )
                    .offset(x: 0, y: 135)
                    NavigationLink(destination: Login()) {
                        Text("Ya tienes una cuenta? Aqui")
                    }.font(Font.custom("Montserrat", size: 13).weight(.medium))
                        .lineSpacing(18)
                        .foregroundColor(Color(red: 0.09, green: 0.10, blue: 0.12))
                        .offset(x: -4, y: 241)
                    Text("Crear cuenta")
                        .font(Font.custom("Montserrat", size: 36).weight(.heavy))
                        .lineSpacing(40)
                        .foregroundColor(.black)
                        .offset(x: 0, y: -306)
                    Text("Necesitamos que nos compartas algunos datos 👀")
                        .font(Font.custom("Montserrat", size: 17).weight(.medium))
                        .lineSpacing(24)
                        .foregroundColor(Color(red: 0.28, green: 0.29, blue: 0.34))
                        .offset(x: 0, y: -250)
                }
                .frame(width: 375, height: 700)
                .background(.white)
                .offset(x: 0, y: 0)
            }
            .frame(width: 375, height: 812)
            .background(.white)
        };
      }
}

#Preview {
    Register()
        .modelContainer(for: Item.self, inMemory: true)
}
