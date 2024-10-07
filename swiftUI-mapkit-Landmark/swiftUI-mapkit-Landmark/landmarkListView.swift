//
//  landmarkListView.swift
//  swiftUI-mapkit-Landmark
//
//  Created by Mehmet Tuna Arıkaya on 13.09.2024.
//

import SwiftUI

struct LandmarkListView : View {
    var body: some View {
        
        NavigationView{
        List(landmarkArray){ landmark in
            NavigationLink(destination: DetailsView(chosenLandmark: landmark)) {
                LandmarkListRow(landmark: landmark)
            }
            
        }.navigationBarTitle(Text("Landmark Book"))
        }
    }
}

#if DEBUG
struct LandmarkListView_Previews : PreviewProvider {
    static var previews: some View {
        LandmarkListView()
    }
}
#endif
