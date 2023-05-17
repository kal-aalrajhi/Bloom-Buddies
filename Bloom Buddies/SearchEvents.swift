//
//  SearchEvents.swift
//  Bloom Buds
//
//  Created by Amber Spencley on 5/11/23.
//

import SwiftUI

struct SearchEvents: View {
    @State private var searchEvents: String = ""
    @State private var gardeningInterests: String = ""
    @State private var filterLocation: String = ""
    var body: some View {
        ZStack {
            Color("FloralWhite")
                .ignoresSafeArea()
            ScrollView {
                Text("")
                    .navigationTitle("")
                    .toolbar {
                        NavigationLink(destination: Dashboard()) {
                            Image("bloom_buddy_icon")
                                .resizable()
                                .frame(width: 50, height: 50)
                        }
                        Spacer()
                    }
                Spacer()
                    .frame(height: 20)
                VStack(alignment: .center) {
                    Text("Search Events")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color("BlackOlive"))
                    Spacer()
                        .frame(height:50)
                    
                    CustomTextField(text: $searchEvents, placeholder: "Search Events", color: .white)
                        .frame(width: 150, height: 3)
                        .padding()
                        .background(Color("Darkgreen"))
                        .cornerRadius(10.0)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    
                    CustomTextField(text: $gardeningInterests, placeholder: "Gardening Interests", color: .white)
                        .frame(width: 150, height: 3)
                        .padding()
                        .background(Color("Tawny"))
                        .cornerRadius(10.0)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    
                    CustomTextField(text: $filterLocation, placeholder: "Filter by Location", color: .white)
                        .frame(width: 150, height: 3)
                        .padding()
                        .background(Color("Tawny"))
                        .cornerRadius(10.0)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    Spacer()
                        .frame(height:50)
                    
                    VStack(alignment: .center) {
                        HStack {
                            NavigationLink(destination: EventPage()) {
                                Text("Zach's Companion Planting")
                                    .frame(width: 150, height: 50)
                                    .padding()
                                    .background(Color("Asparagus"))
                                    .cornerRadius(10.0)
                                    .multilineTextAlignment(.center)
                                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            }
                            NavigationLink(destination: EventPage()) {
                                Text("Lex's Raised Bed Garden")
                                    .frame(width: 150, height: 50)
                                    .padding()
                                    .background(Color("Asparagus"))
                                    .cornerRadius(10.0)
                                    .multilineTextAlignment(.center)
                                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            }
                        }
                        HStack {
                            NavigationLink(destination: EventPage()) {
                                Text("Ahmed's Lumber Lecture")
                                    .frame(width: 150, height: 50)
                                    .padding()
                                    .background(Color("Asparagus"))
                                    .cornerRadius(10.0)
                                    .multilineTextAlignment(.center)
                                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            }
                            NavigationLink(destination: EventPage()) {
                                Text("Kacie's Soil Amendment")
                                    .frame(width: 150, height: 50)
                                    .padding()
                                    .background(Color("Asparagus"))
                                    .cornerRadius(10.0)
                                    .multilineTextAlignment(.center)
                                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            }
                        }
                        
                        HStack {
                            NavigationLink(destination: EventPage()) {
                                Text("Big Bill's Tree Planting")
                                    .frame(width: 150, height: 50)
                                    .padding()
                                    .background(Color("Asparagus"))
                                    .cornerRadius(10.0)
                                    .multilineTextAlignment(.center)
                                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            }
                            NavigationLink(destination: EventPage()) {
                                Text("Luna's Moon Gardening")
                                    .frame(width: 150, height: 50)
                                    .padding()
                                    .background(Color("Asparagus"))
                                    .cornerRadius(10.0)
                                    .multilineTextAlignment(.center)
                                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            }
                        }
                    }
                    .foregroundColor(Color("FloralWhite"))
                }
            }
        }
    }
}

struct SearchEvents_Previews: PreviewProvider {
    static var previews: some View {
        SearchEvents()
    }
}
