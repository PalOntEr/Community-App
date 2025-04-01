//
//  Home.swift
//  Community App
//
//  Created by MaciOSLabAir on 01/04/25.
//

import SwiftUI

struct PersonalData: View {
    var body: some View {
        NavigationStack {
            ZStack() {
              Group {
                VStack(alignment: .leading, spacing: 12) {
                  Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 327, height: 212)
                    .background(Color(red: 0.98, green: 0.35, blue: 0.17))
                    .cornerRadius(16)
                    .overlay(
                      RoundedRectangle(cornerRadius: 16)
                        .inset(by: 1)
                        .stroke(Color(red: 0.09, green: 0.10, blue: 0.12), lineWidth: 1)
                    )
                }
                .padding(24)
                .background(.white)
                .offset(x: -2, y: -142)
                ZStack() {
                  Text("Datos de identificación")
                    .font(Font.custom("Montserrat", size: 27).weight(.heavy))
                    .lineSpacing(32)
                    .foregroundColor(Color(red: 0.09, green: 0.10, blue: 0.12))
                    .offset(x: 0, y: 19)
                }
                .frame(width: 375, height: 118)
                .background(.white)
                .offset(x: 0, y: -347)
                ZStack() {
                  Text("Datos de identificación")
                    .font(Font.custom("Montserrat", size: 27).weight(.heavy))
                    .lineSpacing(32)
                    .foregroundColor(Color(red: 0.09, green: 0.10, blue: 0.12))
                    .offset(x: 0, y: 19)
                }
                .frame(width: 375, height: 118)
                .background(.white)
                .offset(x: 0, y: -347)
                Text("INE")
                  .font(Font.custom("Montserrat", size: 20).weight(.heavy))
                  .lineSpacing(32)
                  .foregroundColor(Color(red: 0.09, green: 0.10, blue: 0.12))
                  .offset(x: -137, y: -272)
                Text("Comprobante de domicilio")
                  .font(Font.custom("Montserrat", size: 20).weight(.heavy))
                  .lineSpacing(32)
                  .foregroundColor(Color(red: 0.09, green: 0.10, blue: 0.12))
                  .offset(x: -18.50, y: -4.50)
                ZStack() {

                }
                .frame(width: 99.94, height: 119.84)
                .offset(x: -69.53, y: -154.08)
                ZStack() {
                  Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 322, height: 232)
                    .background(Color(red: 0.10, green: 0.28, blue: 0.90))
                    .cornerRadius(16)
                    .overlay(
                      RoundedRectangle(cornerRadius: 16)
                        .inset(by: 1)
                        .stroke(Color(red: 0.09, green: 0.10, blue: 0.12), lineWidth: 1)
                    )
                    .offset(x: 0, y: 0)
                  Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 40, height: 40)
                    .cornerRadius(6)
                    .overlay(
                      RoundedRectangle(cornerRadius: 6)
                        .stroke(.white, lineWidth: 1)
                    )
                    .offset(x: -0.50, y: 0)
                  Ellipse()
                    .foregroundColor(.clear)
                    .frame(width: 10.26, height: 10.26)
                    .overlay(Ellipse()
                    .inset(by: 1)
                    .stroke(.white, lineWidth: 1))
                    .offset(x: 3.09, y: -8.72)
                }
                .frame(width: 322, height: 232)
                .offset(x: 0.50, y: 148)
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 40, height: 40)
                  .cornerRadius(6)
                  .overlay(
                    RoundedRectangle(cornerRadius: 6)
                      .stroke(.white, lineWidth: 1)
                  )
                  .offset(x: 82.50, y: -145)
                Ellipse()
                  .foregroundColor(.clear)
                  .frame(width: 10.26, height: 10.26)
                  .overlay(Ellipse()
                  .inset(by: 1)
                  .stroke(.white, lineWidth: 1))
                  .offset(x: 86.09, y: -153.72)
              }
                Group {
                VStack(spacing: 10) {
                  HStack(spacing: 6) {
                      NavigationLink(destination: Home()) {
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
                .padding(16)
                .frame(width: 135, height: 57)
                .background(Color(red: 1, green: 0.74, blue: 0.07))
                .cornerRadius(16)
                .overlay(
                  RoundedRectangle(cornerRadius: 16)
                    .inset(by: 1)
                    .stroke(.black, lineWidth: 1)
                )
                .offset(x: -2, y: 350.50)
              }
            }
            .frame(width: 375, height: 812)
            .background(.white)
        }
      }
}

#Preview {
    PersonalData()
        .modelContainer(for: Item.self, inMemory: true)
}
