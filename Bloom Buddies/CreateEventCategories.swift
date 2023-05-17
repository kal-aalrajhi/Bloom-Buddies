//
//  CreateEventCategories.swift
//  Bloom Buddies
//
//  Created by Kal Circus on 5/12/23.
//

import SwiftUI

struct CreateEventCategories: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("FloralWhite")
                        .ignoresSafeArea()                
                ScrollView {
                    VStack (alignment: .center, spacing: 30) {
                        Text("What kind of event would you like to host?")
                            .padding([.top, .bottom, .trailing], 20.0)
                        HStack (spacing: 20) {
                            Button {
                                // actions
                            } label: {
                                Rectangle()
                                    .fill(Color("Asparagus"))
                                    .frame(width: 150, height: 130)
                                    .cornerRadius(10)
                                    .overlay(
                                        VStack {
                                            Text("PLANTING")
                                                .font(.headline)
                                                .foregroundColor(Color("FloralWhite"))
                                            Spacer()
                                                .frame(height: 15)
                                            Image(systemName: "leaf.fill")
                                                .font(.largeTitle)
                                                .foregroundColor(Color("FloralWhite"))
                                        }
                                        .padding()
                                    )
                                    .shadow(radius: 10)
                            }
                            
                            Button {
                                // actions
                            } label: {
                                Rectangle()
                                    .fill(Color("Tawny"))
                                    .frame(width: 150, height: 130)
                                    .cornerRadius(10)
                                    .overlay(
                                        VStack {
                                            Text("FORAGING")
                                                .font(.headline)
                                                .foregroundColor(Color("FloralWhite"))
                                            Spacer()
                                                .frame(height: 15)
                                            Image(systemName: "magnifyingglass")
                                                .font(.largeTitle)
                                                .foregroundColor(Color("FloralWhite"))
                                        }
                                            .padding()
                                    )
                                    .shadow(radius: 10)
                            }
                        }
                        HStack (spacing: 20) {
                            Button {
                                // actions
                            } label: {
                                Rectangle()
                                    .fill(Color("Tawny"))
                                    .frame(width: 150, height: 130)
                                    .cornerRadius(10)
                                    .overlay(
                                        VStack {
                                            Text("EXHCANGE")
                                                .font(.headline)
                                                .foregroundColor(Color("FloralWhite"))
                                            Spacer()
                                                .frame(height: 15)
                                            Image(systemName: "paperplane.fill")
                                                .font(.largeTitle)
                                                .foregroundColor(Color("FloralWhite"))
                                        }
                                            .padding()
                                    )
                                    .shadow(radius: 10)
                            }
                            
                            Button {
                                // actions
                            } label: {
                                Rectangle()
                                    .fill(Color("HarvestGold"))
                                    .frame(width: 150, height: 130)
                                    .cornerRadius(10)
                                    .overlay(
                                        VStack {
                                            Text("COMPOSTING")
                                                .font(.headline)
                                                .foregroundColor(Color("FloralWhite"))
                                            Spacer()
                                                .frame(height: 15)
                                            Image(systemName: "trash.fill")
                                                .font(.largeTitle)
                                                .foregroundColor(Color("FloralWhite"))
                                        }
                                            .padding()
                                    )
                                    .shadow(radius: 10)
                            }
                        }
                        HStack (spacing: 20) {
                            Button {
                                // actions
                            } label: {
                                Rectangle()
                                    .fill(Color("Asparagus"))
                                    .frame(width: 150, height: 130)
                                    .cornerRadius(10)
                                    .overlay(
                                        VStack {
                                            Text("GROWING")
                                                .font(.headline)
                                                .foregroundColor(Color("FloralWhite"))
                                            Spacer()
                                                .frame(height: 15)
                                            Image(systemName: "tree.fill")
                                                .font(.largeTitle)
                                                .foregroundColor(Color("FloralWhite"))
                                        }
                                            .padding()
                                    )
                                    .shadow(radius: 10)
                            }
                            
                            Button {
                                // actions
                            } label: {
                                Rectangle()
                                    .fill(Color("BlackOlive"))
                                    .frame(width: 150, height: 130)
                                    .cornerRadius(10)
                                    .overlay(
                                        VStack {
                                            Text("OTHER")
                                                .font(.headline)
                                                .foregroundColor(Color("FloralWhite"))
                                            Spacer()
                                                .frame(height: 15)
                                            Image(systemName: "heart.fill")
                                                .font(.largeTitle)
                                                .foregroundColor(Color("FloralWhite"))
                                        }
                                            .padding()
                                    )
                                    .shadow(radius: 10)
                            }
                        }
                    }
                }
                .navigationTitle("Event Category")
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

struct CreateEventCategories_Previews: PreviewProvider {
    static var previews: some View {
        CreateEventCategories()
    }
}
