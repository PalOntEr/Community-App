import SwiftUI
import SwiftData

struct Home: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 10) {
                // Navigation Title Space
                Spacer().frame(height: 120)

                // Search Bar
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(Color(red: 0.09, green: 0.10, blue: 0.12))
                    TextField("Busca lo que necesitas...", text: .constant(""))
                        .font(.system(size: 21, weight: .medium))
                        .foregroundColor(Color(red: 0.09, green: 0.10, blue: 0.12))
                }
                .padding()
                .background(.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(Color(red: 0.09, green: 0.10, blue: 0.12), lineWidth: 1)
                )
                .padding(.horizontal)

                // Music Card
                VStack(alignment: .leading, spacing: 12) {
                    RoundedRectangle(cornerRadius: 16)
                        .fill(Color(red: 0.98, green: 0.35, blue: 0.17))
                        .frame(height: 212)
                        .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(Color(red: 0.09, green: 0.10, blue: 0.12), lineWidth: 1)
                        )
                    Text("Música")
                        .font(.system(size: 21, weight: .heavy))
                        .foregroundColor(Color(red: 0.09, green: 0.10, blue: 0.12))
                    Spacer().frame(height: 12)
                    Text("$20")
                        .font(.system(size: 27, weight: .heavy))
                        .foregroundColor(Color(red: 0.09, green: 0.10, blue: 0.12))
                }
                .padding()
                .background(.white)
                .padding(.horizontal)

                // Yellow Card
                RoundedRectangle(cornerRadius: 16)
                    .fill(Color(red: 1, green: 0.74, blue: 0.07))
                    .frame(height: 212)
                    .overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(Color(red: 0.09, green: 0.10, blue: 0.12), lineWidth: 1)
                    )
                    .padding(.horizontal)

                Spacer()
            }
            .padding(.top)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .overlay(alignment: .bottom) {
                VStack {
                    HStack(spacing: 16) {
                        BottomBarItem(iconName: "house", text: "Home", isActive: true)
                        BottomBarItem(iconName: "map", text: "Mapa")
                        BottomBarItem(iconName: "plus.app", text: "Crear")
                        BottomBarItem(iconName: "message", text: "Chat", badgeCount: 1)
                    }
                    .padding(.top)
                    .background(.white)
                }
                .frame(maxWidth: .infinity)
            }
        }
        .navigationTitle("Home")
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    Home()
        .modelContainer(for: Item.self, inMemory: true)
}
