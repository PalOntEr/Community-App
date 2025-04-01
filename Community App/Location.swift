import SwiftUI
import MapKit

struct PlacesListView: View {
    let places: [Place] = [
        Place(name: "Danza", address: "Wolf Crater, 897, Marsh", distance: 1.5, coordinate: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194)),
        Place(name: "Música", address: "Wolf Crater, 897, Marsh", distance: 2.7, coordinate: CLLocationCoordinate2D(latitude: 37.7858, longitude: -122.4065))
    ]

    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("Ultimos")
                    .font(.system(size: 44, weight: .heavy))
                    .foregroundColor(.white)

                Text("Cursos")
                    .font(.system(size: 44, weight: .heavy))
                    .foregroundColor(Color(red: 0.09, green: 0.10, blue: 0.12))
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            .padding(.bottom)
            .background(.white)

            ScrollView {
                VStack(spacing: 20) {
                    ForEach(places) { place in
                        PlaceView(place: place)
                        HStack {
                            Spacer()
                            Text("Go")
                                .font(.system(size: 24, weight: .heavy))
                                .foregroundColor(Color(red: 0.09, green: 0.10, blue: 0.12))
                                .padding(.leading)
                        }
                        .padding(.horizontal)
                    }
                }
                .padding(.horizontal)
            }
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
}

struct PlaceView: View {
    let place: Place

    var body: some View {
        ZStack(alignment: .topLeading) {
            Map(coordinateRegion: .constant(MKCoordinateRegion(center: place.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))), annotationItems: [place]) { item in
                MapMarker(coordinate: item.coordinate)
            }
            .frame(height: 159)
            .cornerRadius(16)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color(red: 0.09, green: 0.10, blue: 0.12), lineWidth: 1)
            )

            VStack(alignment: .leading) {
                Text(place.name)
                    .font(.system(size: 24, weight: .heavy))
                    .foregroundColor(Color(red: 0.09, green: 0.10, blue: 0.12))

                Text(place.address)
                    .font(.system(size: 21, weight: .medium))
                    .foregroundColor(Color(red: 0.28, green: 0.29, blue: 0.34))
            }
            .padding()

            HStack {
                Spacer()
                ZStack {
                    Rectangle()
                        .fill(Color(red: 0.09, green: 0.10, blue: 0.12))
                        .frame(width: 64, height: 64)
                        .cornerRadius(8)

                    VStack {
                        Text("\(place.distance, specifier: "%.1f")")
                            .font(.system(size: 24, weight: .heavy))
                            .foregroundColor(.white)
                        Text("Kms")
                            .font(.system(size: 17, weight: .medium))
                            .foregroundColor(.white)
                    }
                }
            }
            .padding()
        }
    }
}

struct Place: Identifiable, Equatable {
    let id = UUID()
    let name: String
    let address: String
    let distance: Double
    let coordinate: CLLocationCoordinate2D

    static func == (lhs: Place, rhs: Place) -> Bool {
        return lhs.id == rhs.id &&
               lhs.name == rhs.name &&
               lhs.address == rhs.address &&
               lhs.distance == rhs.distance &&
               lhs.coordinate.latitude == rhs.coordinate.latitude &&
               lhs.coordinate.longitude == rhs.coordinate.longitude
    }
}

struct BottomBarItem: View {
    let iconName: String
    let text: String
    var isActive: Bool = false
    var badgeCount: Int?

    var body: some View {
        VStack {
            ZStack(alignment: .topTrailing) {
                Image(systemName: iconName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                    .foregroundColor(isActive ? Color(red: 0.09, green: 0.10, blue: 0.12) : Color(red: 0.28, green: 0.29, blue: 0.34))
                if let badgeCount = badgeCount {
                    Circle()
                        .fill(Color(red: 0.98, green: 0.35, blue: 0.17))
                        .frame(width: 14, height: 14)
                        .overlay(Text("\(badgeCount)").font(.system(size: 10)).foregroundColor(.white))
                        .offset(x: 10, y: -10)
                }
            }
            Text(text)
                .font(.system(size: 12, weight: .heavy))
                .foregroundColor(isActive ? Color(red: 0.09, green: 0.10, blue: 0.12) : Color(red: 0.28, green: 0.29, blue: 0.34))
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 8)
    }
}

#Preview {
    PlacesListView()
}
