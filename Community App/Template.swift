//
//  Home.swift
//  Community App
//
//  Created by MaciOSLabAir on 01/04/25.
//

import SwiftUI
import SwiftData

struct TEST: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]
    
    var body: some View {
        NavigationStack {
            
        }.navigationTitle("TEST")
            .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    TEST()
        .modelContainer(for: Item.self, inMemory: true)
}
