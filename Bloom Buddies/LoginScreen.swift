//
//  LoginScreen.swift
//  Bloom Buds
//
//  Created by Amber Spencley on 5/11/23.
//

import SwiftUI

struct LoginScreen: View {
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        ZStack {
        Color("FloralWhite")
                .ignoresSafeArea()
            
            VStack(alignment: .center) {
               
//                Spacer()
                // Text
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
                
                CustomTextField(text: $password, placeholder: "Password", color: .white)
                    .frame(width: 150, height: 3)
                    .padding()
                    .background(Color("Darkgreen"))
                    .cornerRadius(10.0)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                
//
//                //Password
//                SecureField("Password", text: $password)
//                    .frame(width: 150, height: 3)
//                    .padding()
//                    .background(Color("Darkgreen"))
//                    .cornerRadius(10.0)
//                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                
                // Buttons
                Button("Login") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                    .frame(width: 190, height: 3)
                    .padding()
                    .background(Color("HarvestGold"))
                    .cornerRadius(10.0)
                    .multilineTextAlignment(.center)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .bold()
                
                Spacer()
                Button("See Event") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                    .frame(width: 150, height: 3)
                    .padding()
                    .background(Color("Tawny"))
                    .cornerRadius(10.0)
                    .multilineTextAlignment(.center)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            
                Button("Create an Account") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                    .frame(width: 150, height: 3)
                    .padding()
                    .background(Color("Tawny"))
                    .cornerRadius(10.0)
                    .multilineTextAlignment(.center)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                Spacer()
                
            }
            .padding()
            .foregroundColor(Color("FloralWhite"))
        }
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
