//
//  ContentView.swift
//  Notes App
//
//  Created by Karthikeyan Ramasamy on 16/08/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Test world")
                    .font(CustomFont.bold(50).font)
                // ✅ Navigation button
                NavigationLink("Go to Details", destination: DetailsView())
                    .font(CustomFont.regular(20).font)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .navigationTitle("Login")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}

struct DetailsView: View {
    var body: some View {
        Text("Navigation view")
            .navigationTitle("Details View")
    }
}
