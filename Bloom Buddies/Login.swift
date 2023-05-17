//
//  Login.swift
//  Bloom Buddies
//
//  Created by Kal Circus on 5/10/23.
//

import SwiftUI

struct CustomTextField: View {
    @Binding var text: String
    var placeholder: String
    var color: Color

    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty {
                Text(placeholder)
                    .foregroundColor(color)
                    .italic()
            }
            TextField("", text: $text)
        }
    }
}

struct Login: View {
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationView {
            ZStack {
            Color("FloralWhite")
                    .ignoresSafeArea()
                
                VStack(alignment: .center) {

                    Text("Bloom Buddies")
                        .fontWeight(.heavy)
                        .foregroundColor(Color("Asparagus"))
                        .font(.custom("Helvetica", size: 45))
                
                    
                    // Image
                    Image("bloom_buddy_icon")
                        .resizable()
                        .frame(width: 300.0, height: 300.0)
                    
                    CustomTextField(text: $username, placeholder: "Username", color: .white)
                        .frame(width: 150, height: 3)
                        .padding()
                        .background(Color("Darkgreen"))
                        .cornerRadius(10.0)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    
    //                CustomTextField(text: $password, placeholder: "Password", color: .white)
    //                    .frame(width: 150, height: 3)
    //                    .padding()
    //                    .background(Color("Darkgreen"))
    //                    .cornerRadius(10.0)
    //                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)

                    //Password
                    SecureField("Password", text: $password)
                        .frame(width: 150, height: 3)
                        .padding()
                        .background(Color("Darkgreen"))
                        .cornerRadius(10.0)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    
                    
                    NavigationLink(destination: Dashboard()) {
                        Text("Login")
                            .frame(width: 150, height: 3)
                            .padding()
                            .background(Color("HarvestGold"))
                            .cornerRadius(10.0)
                            .multilineTextAlignment(.center)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            .bold()
                    }
                    Spacer()
                    
                    NavigationLink(destination: SearchEvents()) {
                        Text("See Events")
                            .frame(width: 150, height: 3)
                            .padding()
                            .background(Color("Tawny"))
                            .cornerRadius(10.0)
                            .multilineTextAlignment(.center)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    }
                         
                    NavigationLink(destination: Create_Profile()) {
                        Text("Create an Account")
                            .frame(width: 150, height: 3)
                            .padding()
                            .background(Color("Tawny"))
                            .cornerRadius(10.0)
                            .multilineTextAlignment(.center)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    }
//                    NavigationLink(destination: SearchEvents()) {
//                        Text("Create an Account")
//                            .frame(width: 150, height: 3)
//                            .padding()
//                            .background(Color("Tawny"))
//                            .cornerRadius(10.0)
//                            .multilineTextAlignment(.center)
//                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
//                    }
                    
                    Spacer()
                    
                }
                .padding()
                .foregroundColor(Color("FloralWhite"))
            }
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}


