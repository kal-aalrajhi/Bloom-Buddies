//
//  Photos.swift
//  Bloom Buddies
//
//  Created by Kal Circus on 5/16/23.
//

import SwiftUI

struct Photos: View {
    var body: some View {
         ScrollView{
            VStack {
                Text("Photos")
                    .font(.title)
                    .foregroundColor(Color ("BlackOlive"))
                HStack {
                    Image("Garden1")
                    Image("Garden2")
                   
                }
                HStack {
                    Image("Garden3")
                    Image("Garden4")
                   
                }
                HStack {
                    Image("Garden1")
                    Image("Garden2")
                   
                }
                HStack {
                    Image("Garden3")
                    Image("Garden4")
                   
                }
             
           
            }
        }
        
        
    }
}

struct Photos_Previews: PreviewProvider {
    static var previews: some View {
        Photos()
    }
}
