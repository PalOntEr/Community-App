import SwiftUI

struct Config: View {
  var body: some View {
    ZStack() {
      ZStack() {
        Text("Configuraciones")
          .font(Font.custom("Montserrat", size: 27).weight(.heavy))
          .lineSpacing(32)
          .foregroundColor(Color(red: 0.09, green: 0.10, blue: 0.12))
          .offset(x: -0.50, y: 19)
      }
      .frame(width: 375, height: 118)
      .background(.white)
      .offset(x: 0, y: -347)
      VStack(spacing: 16) {
        ZStack() {
          ZStack() {
            Ellipse()
              .foregroundColor(.clear)
              .frame(width: 24, height: 24)
              .background(Color(red: 1, green: 0.74, blue: 0.07))
              .overlay(
                Ellipse()
                  .inset(by: 1)
                  .stroke(Color(red: 0.09, green: 0.10, blue: 0.12), lineWidth: 1)
              )
              .offset(x: 0, y: 0)
          }
          .frame(width: 24, height: 24)
          .offset(x: -127.50, y: 0)
          Text("Cuenta")
            .font(Font.custom("Montserrat", size: 17).weight(.heavy))
            .lineSpacing(24)
            .foregroundColor(Color(red: 0.09, green: 0.10, blue: 0.12))
            .offset(x: 6, y: 0)
          ZStack() {

          }
          .frame(width: 24, height: 24)
          .offset(x: 127.50, y: 0)
        }
        .frame(width: 327, height: 56)
        .background(.white)
        ZStack() {
          ZStack() {
            Ellipse()
              .foregroundColor(.clear)
              .frame(width: 24, height: 24)
              .background(Color(red: 0.38, green: 0.90, blue: 0.77))
              .overlay(
                Ellipse()
                  .inset(by: 1)
                  .stroke(Color(red: 0.09, green: 0.10, blue: 0.12), lineWidth: 1)
              )
              .offset(x: 0, y: 0)
          }
          .frame(width: 24, height: 24)
          .offset(x: -127.50, y: 0)
          Text("Contraseña")
            .font(Font.custom("Montserrat", size: 17).weight(.heavy))
            .lineSpacing(24)
            .foregroundColor(Color(red: 0.09, green: 0.10, blue: 0.12))
            .offset(x: 6, y: 0)
          ZStack() {

          }
          .frame(width: 24, height: 24)
          .offset(x: 127.50, y: 0)
        }
        .frame(width: 327, height: 56)
        .background(.white)
        ZStack() {
          ZStack() {
            Ellipse()
              .foregroundColor(.clear)
              .frame(width: 24, height: 24)
              .background(Color(red: 1, green: 0.59, blue: 0.57))
              .overlay(
                Ellipse()
                  .inset(by: 1)
                  .stroke(Color(red: 0.09, green: 0.10, blue: 0.12), lineWidth: 1)
              )
              .offset(x: 0, y: 0)
          }
          .frame(width: 24, height: 24)
          .offset(x: -127.50, y: 0)
          Text("Privacidad")
            .font(Font.custom("Montserrat", size: 17).weight(.heavy))
            .lineSpacing(24)
            .foregroundColor(Color(red: 0.09, green: 0.10, blue: 0.12))
            .offset(x: 6, y: 0)
          ZStack() {

          }
          .frame(width: 24, height: 24)
          .offset(x: 127.50, y: 0)
        }
        .frame(width: 327, height: 56)
        .background(.white)
        ZStack() {
          ZStack() {
            Ellipse()
              .foregroundColor(.clear)
              .frame(width: 24, height: 24)
              .background(Color(red: 1, green: 0.74, blue: 0.07))
              .overlay(
                Ellipse()
                  .inset(by: 1)
                  .stroke(Color(red: 0.09, green: 0.10, blue: 0.12), lineWidth: 1)
              )
              .offset(x: 0, y: 0)
          }
          .frame(width: 24, height: 24)
          .offset(x: -127.50, y: 0)
          Text("Preferencias")
            .font(Font.custom("Montserrat", size: 17).weight(.heavy))
            .lineSpacing(24)
            .foregroundColor(Color(red: 0.09, green: 0.10, blue: 0.12))
            .offset(x: 6, y: 0)
          ZStack() {

          }
          .frame(width: 24, height: 24)
          .offset(x: 127.50, y: 0)
        }
        .frame(width: 327, height: 56)
        .background(.white)
      }
      .padding(EdgeInsets(top: 16, leading: 0, bottom: 16, trailing: 0))
      .background(.white)
      .cornerRadius(16)
      .overlay(
        RoundedRectangle(cornerRadius: 16)
          .inset(by: 1)
          .stroke(Color(red: 0.09, green: 0.10, blue: 0.12), lineWidth: 1)
      )
      .offset(x: 0, y: 204)
      .shadow(
        color: Color(red: 0.09, green: 0.10, blue: 0.12, opacity: 1), radius: 0, y: 4
      )
      VStack(spacing: 16) {
        ZStack() {
          ZStack() {
            Ellipse()
              .foregroundColor(.clear)
              .frame(width: 24, height: 24)
              .background(Color(red: 1, green: 0.74, blue: 0.07))
              .overlay(
                Ellipse()
                  .inset(by: 1)
                  .stroke(Color(red: 0.09, green: 0.10, blue: 0.12), lineWidth: 1)
              )
              .offset(x: 0, y: 0)
          }
          .frame(width: 24, height: 24)
          .offset(x: -127.50, y: 0)
          Text("Pantalla y sonido")
            .font(Font.custom("Montserrat", size: 17).weight(.heavy))
            .lineSpacing(24)
            .foregroundColor(Color(red: 0.09, green: 0.10, blue: 0.12))
            .offset(x: 6, y: 0)
          ZStack() {

          }
          .frame(width: 24, height: 24)
          .offset(x: 127.50, y: 0)
        }
        .frame(width: 327, height: 56)
        .background(.white)
        ZStack() {
          ZStack() {
            Ellipse()
              .foregroundColor(.clear)
              .frame(width: 24, height: 24)
              .background(Color(red: 1, green: 0.74, blue: 0.07))
              .overlay(
                Ellipse()
                  .inset(by: 1)
                  .stroke(Color(red: 0.09, green: 0.10, blue: 0.12), lineWidth: 1)
              )
              .offset(x: 0, y: 0)
          }
          .frame(width: 24, height: 24)
          .offset(x: -127.50, y: 0)
          Text("Datos")
            .font(Font.custom("Montserrat", size: 17).weight(.heavy))
            .lineSpacing(24)
            .foregroundColor(Color(red: 0.09, green: 0.10, blue: 0.12))
            .offset(x: 6, y: 0)
          ZStack() {

          }
          .frame(width: 24, height: 24)
          .offset(x: 127.50, y: 0)
        }
        .frame(width: 327, height: 56)
        .background(.white)
        ZStack() {
          ZStack() {
            Ellipse()
              .foregroundColor(.clear)
              .frame(width: 24, height: 24)
              .background(Color(red: 1, green: 0.74, blue: 0.07))
              .overlay(
                Ellipse()
                  .inset(by: 1)
                  .stroke(Color(red: 0.09, green: 0.10, blue: 0.12), lineWidth: 1)
              )
              .offset(x: 0, y: 0)
          }
          .frame(width: 24, height: 24)
          .offset(x: -127.50, y: 0)
          Text("Accesibilidad")
            .font(Font.custom("Montserrat", size: 17).weight(.heavy))
            .lineSpacing(24)
            .foregroundColor(Color(red: 0.09, green: 0.10, blue: 0.12))
            .offset(x: 6, y: 0)
          ZStack() {

          }
          .frame(width: 24, height: 24)
          .offset(x: 127.50, y: 0)
        }
        .frame(width: 327, height: 56)
        .background(.white)
      }
      .padding(EdgeInsets(top: 18, leading: 0, bottom: 18, trailing: 0))
      .background(.white)
      .cornerRadius(16)
      .overlay(
        RoundedRectangle(cornerRadius: 16)
          .inset(by: 1)
          .stroke(Color(red: 0.09, green: 0.10, blue: 0.12), lineWidth: 1)
      )
      .offset(x: 0, y: -110)
      .shadow(
        color: Color(red: 0.09, green: 0.10, blue: 0.12, opacity: 1), radius: 0, y: 4
      )
      Text("General")
        .font(Font.custom("Montserrat", size: 21).weight(.bold))
        .lineSpacing(28)
        .foregroundColor(Color(red: 0.28, green: 0.29, blue: 0.34))
        .offset(x: -120.50, y: -242)
      Text("Seguridad y Privacidad")
        .font(Font.custom("Montserrat", size: 21).weight(.bold))
        .lineSpacing(32)
        .foregroundColor(Color(red: 0.28, green: 0.29, blue: 0.34))
        .offset(x: -36, y: 46)
    }
    .frame(width: 375, height: 812)
    .background(.white);
  }
}

struct Config_Preview: PreviewProvider {
  static var previews: some View {
      Config()
  }
}
