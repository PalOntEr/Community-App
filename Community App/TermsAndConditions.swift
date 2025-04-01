//
//  Home.swift
//  Community App
//
//  Created by MaciOSLabAir on 01/04/25.
//

import SwiftUI

struct TermsAndConditions: View {
    var body: some View {
        NavigationStack {
            ZStack() {
                HStack {
                    Spacer()
                    Text("Sabemos que una comunidad fuerte y confiable empieza con personas reales. Por eso, nos tomamos muy en serio la seguridad y autenticidad de cada perfil. \nImplementamos medidas de verificación inteligentes para protegerte de cuentas falsas y garantizar una comunidad segura y auténtica.\nA continuación, te pediremos que escanees tu INE y un comprobante de domicilio para verificar tu identidad y asegurarnos de que nuestra comunidad siga siendo segura y auténtica. \n¿Estas de acuerdo? 👌")
                        .font(Font.custom("Montserrat", size: 24).weight(.medium))
                        .foregroundColor(Color(red: 0.28, green: 0.29, blue: 0.34))
                        .offset(x: 0, y: -34)
                    Spacer()
                }
              ZStack() {
                Text("Autorizo el uso de mis datos")
                  .font(Font.custom("Monsterrat", size: 21).weight(.heavy))
                  .lineSpacing(28)
                  .foregroundColor(Color(red: 0.09, green: 0.10, blue: 0.12))
                  .offset(x: -36, y: 0)
                ZStack() {
                  Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 60, height: 36)
                    .background(Color(red: 1, green: 0.74, blue: 0.07))
                    .cornerRadius(52)
                    .overlay(
                      RoundedRectangle(cornerRadius: 52)
                        .inset(by: 1)
                        .stroke(Color(red: 0.09, green: 0.10, blue: 0.12), lineWidth: 1)
                    )
                    .offset(x: 0, y: 0)
                  Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 36, height: 36)
                    .background(.white)
                    .cornerRadius(52)
                    .overlay(
                      RoundedRectangle(cornerRadius: 52)
                        .inset(by: 1)
                        .stroke(Color(red: 0.09, green: 0.10, blue: 0.12), lineWidth: 1)
                    )
                    .offset(x: 12, y: 0)
                  Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 14, height: 14)
                    .cornerRadius(52)
                    .overlay(
                      RoundedRectangle(cornerRadius: 52)
                        .inset(by: 1)
                        .stroke(Color(red: 0.09, green: 0.10, blue: 0.12), lineWidth: 1)
                    )
                    .offset(x: 12, y: 0)
                }
                .frame(width: 60, height: 36)
                .offset(x: 133.50, y: 0)
              }
              .frame(width: 375, height: 76)
              .background(.white)
              .offset(x: 0, y: 283)
            }
            .frame(width: 375, height: 600)
            .background(.white)
            VStack(spacing: 10) {
              HStack(spacing: 6) {
                  NavigationLink(destination: PersonalData()) {
                      Text("Siguiente")
                          .font(Font.custom("Montserrat", size: 21).weight(.heavy))
                          .foregroundColor(.black)
                          .frame(width: 135, height: 57)
                          .background(Color(red: 1, green: 0.74, blue: 0.07))
                          .cornerRadius(16)
                          .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .inset(by: 1)
                                .stroke(.black, lineWidth: 1)
                          )
                  }
              }
            }
        }.navigationTitle("Terminos y condiciones");
      }
}

#Preview {
    TermsAndConditions()
        .modelContainer(for: Item.self, inMemory: true)
}
