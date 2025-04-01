import SwiftUI

struct CreateCourseView: View {
    @State private var courseDescription: String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea..."

    var body: some View {
        NavigationView { // Wrap in NavigationView
            VStack(spacing: 0) {
                // Course Description Title
                VStack {
                    Text("Descripción del curso")
                        .font(.system(size: 27, weight: .heavy))
                        .foregroundColor(Color(red: 0.09, green: 0.10, blue: 0.12))
                }
                .frame(maxWidth: .infinity, maxHeight: 118)

                // Course Description Text Input
                TextEditor(text: $courseDescription)
                    .font(.system(size: 17, weight: .medium))
                    .foregroundColor(Color(red: 0.28, green: 0.29, blue: 0.34))
                    .padding(.horizontal)
                    .frame(maxHeight: 200)
                    .padding(.top, -10)

                Spacer() // Push content up, leaving space for the button
                NavigationLink(destination: CreateCourseImage()) {
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
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.white)
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
    }
}

#Preview {
    CreateCourseView()
}
