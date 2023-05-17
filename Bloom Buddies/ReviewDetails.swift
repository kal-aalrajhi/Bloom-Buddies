//
//  ReviewDetails.swift
//  Bloom Buddies
//
//  Created by Kal Circus on 5/12/23.
//

import SwiftUI

struct ReviewDetails: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("FloralWhite")
                        .ignoresSafeArea()
                ScrollView {
                    Spacer()
                        .frame(height: 20)
                    VStack {
                        Rectangle()
                            .fill(Color("Asparagus"))
                            .frame(width: 350, height: 500)
                            .cornerRadius(10)
                            .overlay(
                                VStack {
                                    HStack (alignment: .top){
                                        Text("Event Name  |")
                                            .font(.headline)
                                        .foregroundColor(Color("FloralWhite"))
                                        
                                        Text("Hosted By: [Username]")
                                            .font(.headline)
                                        .foregroundColor(Color("FloralWhite"))
                                    }
                                    Spacer()
                                        .frame(height: 15)
                                    
                                    Rectangle()
                                        .fill(Color("HarvestGold"))
                                        .frame(width: 320, height: 160)
                                        .cornerRadius(10)
                                        .overlay(
                                            VStack (alignment: .leading) {
                                                HStack (spacing: 30){
                                                    Image("gardenEvent")
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fit)
                                                        .frame(width: 120, height: 120)
                                                        .cornerRadius(20)
                                                        .font(.largeTitle)
                                                    
                                                    VStack (alignment: .leading, spacing: 10) {
                                                        Text("Location")
                                                        Text("Date/Time")
                                                        Text("Capacity")
                                                    }
                                                    .italic()
                                                }
                                            }
                                    )
                                    
                                    Text("Additonal Details: ")
                                        .padding(.top)
                                        .frame(alignment: .leading)
                                    
                                    Rectangle()
                                        .fill(Color("FloralWhite"))
                                        .frame(width: 320, height: 200)
                                        .cornerRadius(10)

                                    
                                }
                            )
                            .foregroundColor(Color("FloralWhite"))
                            .shadow(radius: 10)
                        
                        Spacer()
                            .frame(height: 30)
                        
                        Button("Edit Page") {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        }
                            .frame(width: 150, height: 3)
                            .padding()
                            .background(Color("Tawny"))
                            .cornerRadius(10.0)
                            .multilineTextAlignment(.center)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color("FloralWhite"))
                        
                        Button("Publish Page") {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        }
                            .frame(width: 150, height: 3)
                            .padding()
                            .background(Color("Tawny"))
                            .cornerRadius(10.0)
                            .multilineTextAlignment(.center)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color("FloralWhite"))
                    }
                }
                .navigationTitle("Review Details")
                .font(.headline)
                .navigationBarItems(
                    leading: Image(systemName: "leaf")
                        .font(.largeTitle.weight(.black))
                        .foregroundColor(Color("Asparagus"))
                        .imageScale(.small)
                )
            .foregroundColor(Color("BlackOlive"))
            }
        }
    }
}

struct ReviewDetails_Previews: PreviewProvider {
    static var previews: some View {
        ReviewDetails()
    }
}
