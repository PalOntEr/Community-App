import SwiftUI

struct Profile: View {
    var body: some View {
        ZStack {
            Color.white.edgesIgnoringSafeArea(.all) // Ensure full white background

            // Blue background rectangle
            Rectangle()
                .foregroundColor(Color(red: 0.10, green: 0.28, blue: 0.90))
                .frame(width: 375, height: 538)
                .cornerRadius(32)
                .offset(y: -137)

            // User Info
            Text("Mateo Zamora")
                .font(Font.custom("Montserrat", size: 36).weight(.heavy))
                .foregroundColor(.white)
                .offset(y: -123)

            // Profile Picture
            ZStack {
                Circle()
                    .fill(Color(red: 1, green: 0.74, blue: 0.07))
                    .frame(width: 170, height: 170)
                    .overlay(Circle().stroke(Color(red: 0.09, green: 0.10, blue: 0.12), lineWidth: 1))
            }
            .offset(y: -249)

            // Stats
            HStack(spacing: 30) {
                VStack {
                    Text("4").font(Font.custom("Montserrat", size: 27).weight(.heavy)).foregroundColor(Color(red: 0.96, green: 0.96, blue: 0.97))
                    Text("Cursos").font(Font.custom("Montserrat", size: 15).weight(.medium)).foregroundColor(Color(red: 0.96, green: 0.96, blue: 0.97))
                }
                VStack {
                    Text("5").font(Font.custom("Montserrat", size: 27).weight(.heavy)).foregroundColor(Color(red: 0.96, green: 0.96, blue: 0.97))
                    Text("Followers").font(Font.custom("Montserrat", size: 15).weight(.medium)).foregroundColor(Color(red: 0.96, green: 0.96, blue: 0.97))
                }
                VStack {
                    Text("23").font(Font.custom("Montserrat", size: 27).weight(.heavy)).foregroundColor(Color(red: 0.96, green: 0.96, blue: 0.97))
                    Text("Following").font(Font.custom("Montserrat", size: 15).weight(.medium)).foregroundColor(Color(red: 0.96, green: 0.96, blue: 0.97))
                }
            }
            .offset(y: 60)

            // Latest Courses Title
            Text("Ultimos cursos")
                .font(Font.custom("Montserrat", size: 21).weight(.bold))
                .foregroundColor(Color(red: 0.09, green: 0.10, blue: 0.12))
                .offset(y: 178)

            // Course Cards
            HStack(spacing: 16) {
                CourseCard(color: Color(red: 1, green: 0.74, blue: 0.07))
                CourseCard(color: Color(red: 0.98, green: 0.35, blue: 0.17))
                CourseCard(color: Color(red: 1, green: 0.54, blue: 0.73))
            }
            .offset(y: 288)

            // Tags Title
            Text("Tags")
                .font(Font.custom("Montserrat", size: 21).weight(.bold))
                .foregroundColor(.black)
                .offset(y: 412)

            // Tag Buttons
            HStack(spacing: 8) {
                TagButton(text: "Travel", bgColor: .white)
                TagButton(text: "Big Foodie", bgColor: Color(red: 1, green: 0.96, blue: 0.80))
                TagButton(text: "Photography", bgColor: Color(red: 0.84, green: 0.99, blue: 0.97))
                TagButton(text: "Bollywood Movie", bgColor: Color(red: 1, green: 0.95, blue: 0.97))
                TagButton(text: "Sharukh Khan", bgColor: Color(red: 0.91, green: 0.91, blue: 0.99))
            }
            .offset(y: 456)

            // Bottom Bar
            BottomBar()
                .offset(y: 589)
        }
        .frame(width: 375, height: 812)
    }
}

struct CourseCard: View {
    let color: Color

    var body: some View {
        ZStack {
            Rectangle()
                .fill(color)
                .frame(width: 140, height: 160)
                .cornerRadius(16)
                .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color(red: 0.09, green: 0.10, blue: 0.12), lineWidth: 1))

            Rectangle()
                .fill(.clear)
                .frame(width: 40, height: 40)
                .cornerRadius(6)
                .overlay(RoundedRectangle(cornerRadius: 6).stroke(.white, lineWidth: 1))
                .offset(x: -0.50)

            Ellipse()
                .fill(.clear)
                .frame(width: 10.26, height: 10.26)
                .overlay(Ellipse().stroke(.white, lineWidth: 1))
                .offset(x: 3.09, y: -8.72)
        }
    }
}

struct TagButton: View {
    let text: String
    let bgColor: Color

    var body: some View {
        HStack(spacing: 4) {
            Text(text)
                .font(Font.custom("Montserrat", size: 12).weight(.heavy))
                .foregroundColor(Color(red: 0.09, green: 0.10, blue: 0.12))
        }
        .padding(EdgeInsets(top: 10, leading: 12, bottom: 10, trailing: 12))
        .background(bgColor)
        .cornerRadius(44)
        .overlay(RoundedRectangle(cornerRadius: 44).stroke(Color(red: 0.09, green: 0.10, blue: 0.12), lineWidth: 1))
    }
}

struct BottomBar: View {
    var body: some View {
        HStack(alignment: .top, spacing: 48) {
            HStack(spacing: 8) {
                Image(systemName: "pencil") // Placeholder icon
                    .frame(width: 24, height: 24)
                Text("Contra")
                    .font(Font.custom("Montserrat", size: 13).weight(.heavy))
                    .foregroundColor(Color(red: 0.09, green: 0.10, blue: 0.12))
            }
            .padding(EdgeInsets(top: 8, leading: 12, bottom: 8, trailing: 12))
            .background(Color(red: 0.96, green: 0.96, blue: 0.97))
            .cornerRadius(20)

            Image(systemName: "bell") // Placeholder icon
                .frame(width: 24, height: 24)
            Circle()
                .fill(Color(red: 0.93, green: 0.94, blue: 0.96))
                .frame(width: 24, height: 24)
                .overlay(Circle().stroke(Color(red: 0.28, green: 0.29, blue: 0.34), lineWidth: 1))
            RoundedRectangle(cornerRadius: 8)
                .fill(Color(red: 0.93, green: 0.94, blue: 0.96))
                .frame(width: 24, height: 24)
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color(red: 0.28, green: 0.29, blue: 0.34), lineWidth: 1))
        }
        .padding(EdgeInsets(top: 20, leading: 28, bottom: 20, trailing: 28))
        .background(.white)
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
