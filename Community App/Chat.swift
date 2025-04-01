import SwiftUI

struct ChatView: View {
    var body: some View {
        ZStack {
            VStack {
                VStack(spacing: 10) {
                    Text("24, Marzo 27")
                        .font(.system(size: 15, weight: .bold))
                        .foregroundColor(Color(red: 0.62, green: 0.64, blue: 0.70))

                    HStack(spacing: 16) {
                        ZStack {
                            Circle()
                                .fill(Color(red: 1, green: 0.74, blue: 0.07))
                                .frame(width: 54, height: 54)
                                .overlay(
                                    Circle()
                                        .stroke(Color(red: 0.09, green: 0.10, blue: 0.12), lineWidth: 1)
                                )
                                .cornerRadius(166)
                            
                        }
                        .frame(width: 54, height: 54)
                        
                        Text("Angel")
                            .font(.system(size: 27, weight: .heavy))
                            .foregroundColor(Color(red: 0.09, green: 0.10, blue: 0.12))
                    }
                }
                .padding(.top, 16)
                .padding(.horizontal)
                .background(.white)

                ScrollView {
                    VStack(spacing: 16) {
                        HStack {
                            Spacer()
                            Text("Message 1")
                                .padding()
                                .background(Color(red: 0, green: 0.78, blue: 0.68))
                                .cornerRadius(16)
                        }
                        HStack {
                            Text("Message 2")
                                .padding()
                                .background(Color(red: 1, green: 0.74, blue: 0.07))
                                .cornerRadius(16)
                            Spacer()
                        }
                        HStack {
                            Spacer()
                            Text("Longer Message 3")
                                .padding()
                                .background(Color(red: 0, green: 0.78, blue: 0.68))
                                .cornerRadius(16)
                        }
                        HStack {
                            Text("Short")
                                .padding()
                                .background(Color(red: 1, green: 0.74, blue: 0.07))
                                .cornerRadius(16)
                            Spacer()
                        }
                        HStack {
                            Spacer()
                            Text("Another Message")
                                .padding()
                                .background(Color(red: 0, green: 0.78, blue: 0.68))
                                .cornerRadius(16)
                        }
                    }
                    .padding()
                }

                HStack {
                    TextField("Escribe algo...", text: .constant(""))
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .background(Color(.systemGray6))
                        .cornerRadius(16)

                    Button(action: {
                        // Send message action
                    }) {
                        Image(systemName: "paperplane.fill")
                            .foregroundColor(.blue)
                            .padding()
                    }
                }
                .padding()
                .background(.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(Color(red: 0.09, green: 0.10, blue: 0.12), lineWidth: 1)
                )
                .padding(.horizontal)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(.white)
        .navigationTitle("Chat")
    }
}

#Preview {
    ChatView()
}
