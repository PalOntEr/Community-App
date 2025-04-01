import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 40) {
                Text("Home")
                    .font(Font.custom("Montserrat", size: 36).weight(.heavy))
                    .lineSpacing(54)
                    .foregroundColor(Color(red: 0.09, green: 0.10, blue: 0.12))
                Text("Perfil")
                    .font(Font.custom("Montserrat", size: 36).weight(.heavy))
                    .lineSpacing(54)
                    .foregroundColor(Color(red: 0.98, green: 0.35, blue: 0.17))
                Text("Configuracion")
                    .font(Font.custom("Montserrat", size: 36).weight(.heavy))
                    .lineSpacing(54)
                    .foregroundColor(Color(red: 0.09, green: 0.10, blue: 0.12))
                Text("Acerca de")
                    .font(Font.custom("Montserrat", size: 36).weight(.heavy))
                    .lineSpacing(54)
                    .foregroundColor(Color(red: 0.09, green: 0.10, blue: 0.12))
            }
            .offset(x: -19.50, y: -72)
            
            Text("Siguenos")
                .font(Font.custom("Montserrat", size: 21).weight(.heavy))
                .lineSpacing(28)
                .foregroundColor(Color(red: 0.28, green: 0.29, blue: 0.34))
                .offset(x: -103.50, y: 304)
            
            HStack(spacing: 16) { // Use HStack for better layout of icons
                ZStack() {}
                    .frame(width: 24, height: 24)
                ZStack() {}
                    .frame(width: 24, height: 24)
                ZStack() {}
                    .frame(width: 24, height: 24)
            }
            .offset(x: -48, y: 346) // Adjusted x offset for centered HStack
            
            Rectangle() // Replace the ZStack with Rectangle for the white top bar
                .foregroundColor(.white)
                .frame(width: 375, height: 118)
                .offset(x: 0, y: -347)
        }
        .frame(width: 375, height: 812)
        .background(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
