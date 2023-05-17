//
//  EventPage.swift
//  Bloom Buddies
//
//  Created by Kal Circus on 5/12/23.
//

import SwiftUI

struct EventPage: View {
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
                                                            HStack() {
                                                                Image("calendar_icon")
                                                                Image("pin_icon")
                                                            }
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
                                            .overlay(
                                                Text("At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident.")
                                                    .foregroundColor(Color("BlackOlive"))
                                                    .padding(/*@START_MENU_TOKEN@*/[.leading, .bottom, .trailing]/*@END_MENU_TOKEN@*/)
                                            )
                                    }
                                )
                                .foregroundColor(Color("FloralWhite"))
                                .shadow(radius: 10)
                            
                            Spacer()
                                .frame(height: 30)
                            
                            Button("Sign Up") {
                                
                            }
                            .frame(width: 180, height: 5)
                            .padding()
                            .background(Color("Tawny"))
                            .cornerRadius(10.0)
                            .multilineTextAlignment(.center)
                            .shadow(radius: 10)
                            .foregroundColor(Color("FloralWhite"))
                            
                            Button("Report Event") {
                                
                            }
                            .frame(width: 130, height: 3)
                            .padding()
                            .background(Color("Tawny"))
                            .cornerRadius(10.0)
                            .multilineTextAlignment(.center)
                            .shadow(radius: 10)
                            .foregroundColor(Color("FloralWhite"))
                        }
                    }
                    .navigationTitle("Event Details")
                    .font(.headline)
                    .foregroundColor(Color("BlackOlive"))
                }
            }
}

struct EventPage_Previews: PreviewProvider {
    static var previews: some View {
        EventPage()
    }
}
