import SwiftUI
import MapKit

struct CourseAnnotation: Identifiable {
    let id = UUID()
    let coordinate: CLLocationCoordinate2D
}

struct CreateCourseLocation: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.331516, longitude: -121.891054), span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
    @State private var annotations: [CourseAnnotation] = []

    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                // Title
                Text("Dirección del curso")
                    .font(.system(size: 27, weight: .heavy))
                    .foregroundColor(Color(red: 0.09, green: 0.10, blue: 0.12))
                    .padding(.top, 50)

                // MapKit View
                Map(coordinateRegion: $region, annotationItems: annotations, annotationContent: { annotation in
                    MapMarker(coordinate: annotation.coordinate, tint: .red)
                })
                .frame(maxWidth: .infinity, maxHeight: 300)
                .onTapGesture { location in
                    let coordinate = region.center
                    let annotation = CourseAnnotation(coordinate: coordinate)
                    annotations = [annotation]
                }
                .padding(.horizontal)

                Spacer()

                // Navigation Link to Next Step
                NavigationLink(destination: Home()) {
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
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}

#Preview {
    CreateCourseLocation()
}
