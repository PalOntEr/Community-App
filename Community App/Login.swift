//
//  Home.swift
//  Community App
//
//  Created by MaciOSLabAir on 01/04/25.
//

import SwiftUI

struct Login: View {
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
                          Label("Correo electronico", systemImage: "person")
                              .font(Font.custom("Montserrat", size: 21).weight(.medium))
                              .lineSpacing(28)
                              .foregroundColor(Color(red: 0.09, green: 0.10, blue: 0.12))
                          Spacer()
                      }.padding(.leading, 16)
                          .offset(x: -4, y: 0)
                  }
                  .frame(width: 327, height: 56)
                  .offset(x: 0, y: -91)
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
                          HStack(spacing: 12) {
                              Label("Contraseña", systemImage: "lock")
                                  .font(Font.custom("Montserrat", size: 21).weight(.medium))
                                  .lineSpacing(28)
                                  .foregroundColor(Color(red: 0.09, green: 0.10, blue: 0.12))
                              Spacer()
                          }.padding(.leading, 16)
                      }
                      .offset(x: -4, y: 0)
                  }
                  .frame(width: 327, height: 56)
                  .offset(x: 0, y: -11)
                  VStack(spacing: 10) {
                      HStack(spacing: 6) {
                          Spacer()
                          NavigationLink(destination: Home()){
                              Text("Iniciar Sesión")
                          }
                          .font(Font.custom("Montserrat", size: 21).weight(.heavy))
                          .lineSpacing(28)
                          .foregroundColor(.white)
                          Spacer()
                      }
                  }
                  .padding(16)
                  .frame(width: 327)
                  .background(Color(red: 0.09, green: 0.10, blue: 0.12))
                  .cornerRadius(16)
                  .offset(x: 0, y: 95)
                  NavigationLink(destination: Register()) {
                      Text("Nuevo? Crea una")
                          
                  }.font(Font.custom("Montserrat", size: 13).weight(.medium))
                  .lineSpacing(18)
                  .foregroundColor(Color(red: 0.09, green: 0.10, blue: 0.12))
                  .offset(x: 0, y: 174)
                  Text("Iniciar sesión")
                      .font(Font.custom("Montserrat", size: 36).weight(.heavy))
                      .lineSpacing(40)
                      .foregroundColor(.black)
                      .offset(x: 0, y: -163)
              }
              .frame(width: 375, height: 414)
              .background(.white)
              .offset(x: 0, y: 84)
              ZStack() {
                  Ellipse()
                      .foregroundColor(.clear)
                      .frame(width: 120, height: 120)
                      .background(Color(red: 1, green: 0.74, blue: 0.07))
                      .offset(x: 0, y: 0)
              }
              .frame(width: 120, height: 120)
              .offset(x: -0.50, y: -207)
          }
          .frame(width: 375, height: 812)
          .background(.white)
      }
      .navigationBarBackButtonHidden(true);
  }
    
    private func goHome() {
        
    }
}

#Preview {
    Login()
        .modelContainer(for: Item.self, inMemory: true)
}
