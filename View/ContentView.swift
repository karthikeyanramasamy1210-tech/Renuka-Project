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
    @State private var isPasswordVisible = false
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 8) {
                Text("Your Email")
                    .font(CustomFont.semiBold(16).font)
                    .padding(.top,60)
                TextField("Email",text: $userName)
                    .font(CustomFont.semiBold(16).font)
                    .padding(.leading,21)
                    .frame(height:56)
                    .overlay(RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.gray, lineWidth: 2))
                Text("Password")
                    .font(CustomFont.semiBold(16).font)
                    .padding(.top, 8)
                HStack {
                    SecureField("Enter password", text: $passWord)
                        .font(CustomFont.semiBold(16).font)
                        .padding(.leading,21)
                        .frame(height:56)
                    Button(action: {
                        isPasswordVisible.toggle()
                    }) {
                        Image(systemName: isPasswordVisible ? "eye.slash.fill" : "eye.fill")
                            .foregroundColor(.gray)
                    }
                    .padding(.trailing)
                }
                .overlay(RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray, lineWidth: 2))
                HStack {
                    Text("Wrong password")
                        .font(CustomFont.semiBold(16).font)
                    Spacer()
                    Button("Forgot password?"){
                    }
                    .font(CustomFont.semiBold(16).font)
                    .foregroundColor(.newBlue)
                }
                .padding(.top, 6)
                Button("Continue") {
                }
                .frame(height: 56)
                .frame(maxWidth: .infinity)
                .background(Color.paleBlue)
                .cornerRadius(12)
                .font(CustomFont.bold(16).font)
                .foregroundColor(.white)
                .padding(.top, 10)
                HStack(spacing: 16) {
                    Rectangle()
                        .frame(height: 1)
                    Text("Or")
                    Rectangle()
                        .frame(height: 1)
                }
                .frame(maxWidth: .infinity)
                .padding(.top,25)
                .foregroundColor(.lightgrey)
                .padding(.horizontal,64)
                Button {
                    
                } label: {
                    HStack {
                        Image(systemName: "apple.logo")
                        Text("Login with Apple")
                            .font(CustomFont.semiBold(16).font)
                    }
                    .frame(height: 56)
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.black)
                    .overlay(RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.lightgrey, lineWidth: 2))
                }
                .padding(.top, 37)
                Button {
                    
                } label: {
                    HStack {
                        Image("googleIcon")
                            .resizable()
                            .frame(width: 24, height: 24)
                        Text("Login with Google")
                            .font(CustomFont.semiBold(16).font)
                    }
                    .frame(height: 56)
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.black)
                    .overlay(RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.lightgrey, lineWidth: 2))
                    .padding(.top, 8)
                }
                HStack {
                    Text("Don't have an account")
                        .font(CustomFont.semiBold(16).font)
                        .foregroundColor(.darkGrey)
                    Button("Sign up?"){
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.top, 28)
                Spacer()
            }
            .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .topLeading)
            .padding(.horizontal, 26)
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
