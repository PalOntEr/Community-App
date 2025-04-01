import SwiftUI

struct CreateCourseImage: View {
    var body: some View {
        VStack(spacing: 20) { // Add spacing between elements
            // Title
            Text("Selecciona una imagen")
                .font(.system(size: 27, weight: .heavy))
                .foregroundColor(Color(red: 0.09, green: 0.10, blue: 0.12))
                .padding(.top, 50) // Adjust top padding to leave space

            // Image Selection Area
            ZStack {
                RoundedRectangle(cornerRadius: 16)
                    .fill(Color(red: 0.98, green: 0.35, blue: 0.17))
                    .frame(width: 322, height: 232)
                    .overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(Color(red: 0.09, green: 0.10, blue: 0.12), lineWidth: 1)
                    )

                // Plus Icon
                ZStack {
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(.white, lineWidth: 1)
                        .frame(width: 40, height: 40)
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                }
            }

            Spacer() // Push content up
            
            NavigationLink(destination: CreateCourseLocation()) {
                Text("Siguiente")
                    .font(.system(size: 21, weight: .heavy))
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color(red: 0.09, green: 0.10, blue: 0.12))
                    .cornerRadius(16)
                    .padding(.horizontal)
                    .padding(.bottom, 100)
            }
            .overlay(alignment: .bottom) {
                HStack(spacing: 16) {
                    BottomBarItem(iconName: "house", text: "Home", isActive: true)
                    BottomBarItem(iconName: "map", text: "Mapa")
                    BottomBarItem(iconName: "plus.app", text: "Crear")
                    BottomBarItem(iconName: "message", text: "Chat", badgeCount: 1)
                }
                .padding(.top)
                .background(.white)
                .frame(maxWidth: .infinity)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.white)
        .edgesIgnoringSafeArea(.bottom) // Extend bottom bar to bottom of screen
        
        
    }
}

#Preview {
    CreateCourseImage()
}
