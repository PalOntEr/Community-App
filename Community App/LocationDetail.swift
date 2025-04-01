import SwiftUI
import MapKit

struct LocationDetailsView: View {
    let locationCoordinate = CLLocationCoordinate2D(latitude: -34.397, longitude: 150.644) // Example location (Sydney, Australia)

    var body: some View {
        VStack(spacing: 0) { // Set spacing to 0 for seamless background
            // Blue Background and Main Details
            ZStack(alignment: .leading) {
                Color(red: 0.10, green: 0.28, blue: 0.90)
                    .ignoresSafeArea(edges: .top) // Only ignore top safe area

                VStack(alignment: .leading) {
                    Text("Danza")
                        .font(.system(size: 44, weight: .heavy))
                        .foregroundColor(.white)
                        .padding(.bottom, 8)

                    Text("Wolf Crater, 897, New Milkyway Mars")
                        .font(.system(size: 21, weight: .medium))
                        .foregroundColor(.white)
                        .padding(.bottom, 20)

                    HStack {
                        ZStack {
                            Circle()
                                .fill(Color(red: 1, green: 0.74, blue: 0.07))
                                .frame(width: 48, height: 48)
                            Image(systemName: "location.fill")
                                .foregroundColor(.black)
                                .frame(width: 32, height: 32)
                        }

                        Text("Dirección")
                            .font(.system(size: 27, weight: .heavy))
                            .foregroundColor(.white)
                    }
                }
                .padding()
            }
            .frame(maxWidth: .infinity, maxHeight: 200)

            // MapKit View
            Map(coordinateRegion: .constant(MKCoordinateRegion(center: locationCoordinate, span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))), annotationItems: [LocationAnnotation(coordinate: locationCoordinate)]) { item in
                MapMarker(coordinate: item.coordinate, tint: .red)
            }
            .frame(maxWidth: .infinity, maxHeight: 357)
            .cornerRadius(16)
            .padding(.horizontal)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color(red: 0.09, green: 0.10, blue: 0.12), lineWidth: 1)
            )
            .padding(.top, -66.5) // Use padding instead of offset

            // Bottom "Ir" Button
            Button(action: {
                // Action for "Ir" button
            }) {
                HStack {
                    Text("Ir")
                        .font(.system(size: 21, weight: .heavy))
                        .foregroundColor(.white)
                    Image(systemName: "arrow.right")
                        .foregroundColor(.white)
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color(red: 0.09, green: 0.10, blue: 0.12))
                .cornerRadius(16)
            }
            .padding(.horizontal)
            .padding(.top, 316) // Use padding instead of offset

            HStack {
                Circle()
                    .fill(Color(red: 0.09, green: 0.10, blue: 0.12))
                    .frame(width: 32, height: 32)
                    .padding(.leading) // Add leading padding
                Spacer()
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color(red: 0.09, green: 0.10, blue: 0.12))
                        .frame(width: 64, height: 64)
                    VStack {
                        Text("1.5")
                            .font(.system(size: 24, weight: .heavy))
                            .foregroundColor(.white)
                        Text("Km")
                            .font(.system(size: 17, weight: .medium))
                            .foregroundColor(.white)
                    }
                }
                .padding(.trailing) // Add trailing padding
            }
            .padding(.top) // Add top padding

            Spacer()
        }
        .edgesIgnoringSafeArea(.all) // Ignore all safe area edges
    }
}

struct LocationAnnotation: Identifiable {
    let id = UUID()
    let coordinate: CLLocationCoordinate2D
}

#Preview {
    LocationDetailsView()
}
