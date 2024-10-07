//
//  ContentView.swift
//  swiftUI-mapkit-Landmark
//
//  Created by Mehmet Tuna Arıkaya on 13.09.2024.
//

import SwiftUI

struct DetailsView : View {
    
    var chosenLandmark : Landmark
    
    var body: some View {
        VStack{
            
            MapView(coordinate: chosenLandmark.locationCoordinate)
               
               .edgesIgnoringSafeArea(.top) .frame(height:UIScreen.main.bounds.height * 0.3)
            
            CircleImageView(image: Image(chosenLandmark.imageName))
                .frame(width:UIScreen.main.bounds.width * 0.9, height:UIScreen.main.bounds.height * 0.3)
                .offset(y:UIScreen.main.bounds.height * -0.15)
            .padding(.bottom,UIScreen.main.bounds.height * -0.15)
            
            VStack(alignment: .leading){
                Text(chosenLandmark.name)
                .font(.largeTitle)
                    .foregroundColor(Color.orange )
                
                HStack{
                    Text(chosenLandmark.country)
                    .font(.subheadline)
                    
                   Spacer()
                
                    Text(chosenLandmark.category)
                    .font(.subheadline)
                }
                
            }.padding()
            
            Spacer()
        }.navigationBarTitle(Text(chosenLandmark.name))
        
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        DetailsView(chosenLandmark: londonBridgeLandmark)
    }
}
#endif
