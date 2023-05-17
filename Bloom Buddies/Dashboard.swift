import SwiftUI

struct Dashboard: View {
    let imageNames = ["cartoonKal", "cartoonKal", "cartoonKal", "cartoonKal", "cartoonKal", "cartoonKal", "cartoonKal", "cartoonKal", "cartoonKal", "cartoonKal", "cartoonKal", "cartoonKal", "cartoonKal", "cartoonKal"]
    
    let badgeImageNames = ["sprout_full", "sprout_full", "sprout_full", "sprout_full", "sprout_empty", "sprout_empty"]
    
    @State private var currentPage = 0
    @State var interests: [String] = [
        "Composting", "Soil Health", "Planting"
    ]
    @State var pastEvents: [String] = [
        "Mending w/ Mike | 1/15/23", "Soil 101 | 1/18/23", "Tree Planting | 1/25/23",
        "Mushroom Gathering | 2/17/23", "Harvesting 102 | 2/22/23", "Mending w/ Mike | 3/01/23",
        "Plant Trimming | 4/14/23"
    ]
    
    var body: some View {
        ZStack {
            Color("FloralWhite")
                    .ignoresSafeArea()
            ScrollView {
                Text("")
                    .navigationTitle("")
                    .toolbar {
                        HStack {
                            NavigationLink(destination: SearchEvents()) {
                                    Image(systemName: "magnifyingglass")
                                        .font(.largeTitle)
                                        .foregroundColor(Color("BlackOlive"))
                            }
                            
                            NavigationLink(destination: CreateEventCategories()) {
                                    Image(systemName: "tree.fill")
                                        .font(.largeTitle)
                                        .foregroundColor(Color("BlackOlive"))
                            }
                            
                            NavigationLink(destination: CreateEventCategories()) {
                                    Image(systemName: "tree.fill")
                                        .font(.largeTitle)
                                        .foregroundColor(Color("BlackOlive"))
                            }
                            
                            NavigationLink(destination: PinnedEvents()) {
                                    Image(systemName: "tree.fill")
                                        .font(.largeTitle)
                                        .foregroundColor(Color("BlackOlive"))
                            }
                        }
                    }
                        Spacer()
                VStack(alignment: .center, spacing: 20) {
                    Image("cartoonKal")
                        .resizable()
                        .frame(width: 120, height: 120)
                        .cornerRadius(60)
                        .overlay(
                            RoundedRectangle(cornerRadius: 60)
                                .stroke(Color("Tawny"), lineWidth: 5)
                        )
                    
                    Text("CartoonKal2023")
                        .fontWeight(.heavy)
                        .font(.system(size: 20))
                        .frame(width: 200, height: 50)
                        .background(Color("Tawny"))
                        .cornerRadius(10)
                    Divider()
                    
                    VStack(alignment: .leading, spacing: 5) {
                        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), ], spacing: 10) {
                            ForEach(badgeImageNames.indices, id: \.self) { index in
                                Image(badgeImageNames[index])
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 30, height: 30)
                                    .cornerRadius(5)
                            }
                        }
                    }
                    .padding(.leading, 5)
                    Divider()
                    
                    Rectangle()
                        .fill(Color("Darkgreen"))
                        .frame(width: 350, height: 250)
                        .cornerRadius(10)
                        .overlay(
                            VStack {
                                Text("Interests")
                                    .font(.headline)
                                    .padding(.top)
                                List {
                                    ForEach(interests, id: \.self) { interest in
                                        Text(interest)
                                    }
                                    .foregroundColor(Color("BlackOlive"))
                                }
                            }
                        )
                
                    Rectangle()
                        .fill(Color("HarvestGold"))
                        .frame(width: 350, height: 200)
                        .cornerRadius(10)
                        .overlay(
                            VStack {
                                Text("Connections")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .padding(.top)
                                
                                ScrollView(.horizontal, showsIndicators: false) {
                                    LazyHStack(spacing: 15) {
                                        ForEach(imageNames.indices, id: \.self) { index in
                                            Image(imageNames[index])
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 90, height: 90)
                                                .cornerRadius(10)
                                                .scaledToFit()
                                                .overlay(
                                                    RoundedRectangle(cornerRadius: 10)
                                                        .stroke(Color.white, lineWidth: 3)
                                                )
                                        }
                                    }
                                    .padding(.horizontal)
                                }
                            }
                        )
                    Divider()
                    Rectangle()
                        .fill(Color("Darkgreen"))
                        .frame(width: 350, height: 350)
                        .cornerRadius(10)
                        .overlay(
                            VStack {
                                Text("Past Events")
                                    .font(.headline)
                                    .padding(.top)
                                List {
                                    ForEach(pastEvents, id: \.self) { pastEvent in
                                        Text(pastEvent)
                                    }
                                    .foregroundColor(Color("BlackOlive"))
                                }
                            }
                        )
                    
                    Spacer()
                }
                .padding()
                .foregroundColor(Color("FloralWhite"))
            }
        }
    }
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
    }
}
