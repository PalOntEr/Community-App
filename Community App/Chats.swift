import SwiftUI
import SwiftData

struct Chats: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]

    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(Color(red: 0.09, green: 0.10, blue: 0.12))
                    TextField("Buscar...", text: .constant(""))
                        .font(.system(size: 21, weight: .medium))
                        .foregroundColor(Color(red: 0.09, green: 0.10, blue: 0.12))
                }
                .padding()
            }
            .background(.white)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color(red: 0.09, green: 0.10, blue: 0.12), lineWidth: 1)
            )
            .padding()
            VStack {
                VStack {
                    HStack(spacing: 12) {
                        ZStack {
                            Circle()
                                .fill(Color(red: 1, green: 0.83, blue: 0.40))
                                .frame(width: 48, height: 48)
                                .overlay(
                                    Circle()
                                        .stroke(Color(red: 0.09, green: 0.10, blue: 0.12), lineWidth: 1)
                                )
                            Text("A")
                                .font(.system(size: 24, weight: .heavy))
                                .foregroundColor(.white)
                        }
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Angel")
                                .font(.system(size: 21, weight: .heavy))
                                .foregroundColor(Color(red: 0.09, green: 0.10, blue: 0.12))
                            Text("Ya lo compré.")
                                .font(.system(size: 15, weight: .medium))
                                .foregroundColor(Color(red: 0.28, green: 0.29, blue: 0.34))
                        }
                        Spacer()
                        VStack(alignment: .trailing, spacing: 4) {
                            Text("12:00pm")
                                .font(.system(size: 11, weight: .bold))
                                .foregroundColor(Color(red: 0.62, green: 0.64, blue: 0.70))
                            ZStack {
                                Circle()
                                    .fill(Color(red: 0.98, green: 0.35, blue: 0.17))
                                    .frame(width: 24, height: 24)
                                Text("2")
                                    .font(.system(size: 12, weight: .bold))
                                    .foregroundColor(.white)
                            }
                        }
                    }
                    .padding()
                }
                .background(.white)
                .padding(.top)
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
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.white)
        }
        .navigationTitle("Chats")
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    Chats()
        .modelContainer(for: Item.self, inMemory: true)
}
