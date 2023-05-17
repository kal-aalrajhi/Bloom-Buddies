//
//  EventDetails.swift
//  Bloom Buds
//
//  Created by Amber Spencley on 5/11/23.
//

import SwiftUI

struct EventDetails: View {
        @State private var eventName: String = ""
        @State private var eventDate: String = ""
        @State private var eventTime: String = ""
        @State private var eventLocation: String = ""
        @State private var eventInformation: String = ""
    
        var body: some View {
            VStack {
                Text("Event Details")
                    .font(.title)
                    .fontWeight(.bold)
                .foregroundColor(Color("BlackOlive"))
                Spacer()
                    .frame(height:50)
                CustomTextField(text: $eventName, placeholder: "Event Name", color: .white)
                    .frame(width: 150, height: 3)
                    .padding()
                    .background(Color("Darkgreen"))
                    .cornerRadius(10.0)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                
                CustomTextField(text: $eventDate, placeholder: "Event Date", color: .white)
                    .frame(width: 150, height: 3)
                    .padding()
                    .background(Color("HarvestGold"))
                    .cornerRadius(10.0)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                
                CustomTextField(text: $eventTime, placeholder: "Event Time", color: .white)
                    .frame(width: 150, height: 3)
                    .padding()
                    .background(Color("Tawny"))
                    .cornerRadius(10.0)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                
                CustomTextField(text: $eventLocation, placeholder: "Event Location", color: .white)
                    .frame(width: 150, height: 3)
                    .padding()
                    .background(Color("Asparagus"))
                    .cornerRadius(10.0)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                
                CustomTextField(text: $eventInformation, placeholder: "Event Information", color: .white)
                    .frame(width: 150, height: 150)
                    .padding()
                    .background(Color("Darkgreen"))
                    .cornerRadius(10.0)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                
            }
       
        }
    }

struct EventDetails_Previews: PreviewProvider {
    static var previews: some View {
        EventDetails()
    }
}
