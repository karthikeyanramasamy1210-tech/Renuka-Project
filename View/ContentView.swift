//
//  ContentView.swift
//  Notes App
//
//  Created by Karthikeyan Ramasamy on 16/08/25.
//

import SwiftUI

struct ContentView: View {
    @State private var userName: String = ""
    @State private var passWord = ""
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 8) {
                Text("Your Email")
                    .font(CustomFont.semiBold(16).font)
                    .padding(.leading,25)
                    .padding(.top,60)
                TextField("Email",text: $userName)
                    .font(CustomFont.semiBold(16).font)
                    .padding(.leading,21)
                    .frame(height:56)
                    .overlay(RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.gray, lineWidth: 2))
                    .padding(.horizontal, 26)
                Text("Password")
                    .font(CustomFont.semiBold(16).font)
                    .padding(.leading,25)
                    .padding(.top, 8)
                SecureField("Enter password", text: $passWord)
                    .font(CustomFont.semiBold(16).font)
                    .padding(.leading,21)
                    .frame(height:56)
                    .overlay(RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.gray, lineWidth: 2))
                    .padding(.horizontal,26)
                Spacer()
            }
            .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .topLeading)
            
            .navigationTitle("Log in")
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
