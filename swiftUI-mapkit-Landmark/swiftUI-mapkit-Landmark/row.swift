//
//  row.swift
//  swiftUI-mapkit-Landmark
//
//  Created by Mehmet Tuna Arıkaya on 13.09.2024.
//

import SwiftUI

struct LandmarkListRow : View {
    
    var landmark : Landmark
    var body: some View {
        HStack{
            LandmarkListRowImage(landmarkImageName: landmark.imageName)
            Text(landmark.name)
        }
    }
}

#if DEBUG
struct LandmarkListRow_Previews : PreviewProvider {
    static var previews: some View {
        LandmarkListRow(landmark: londonBridgeLandmark)
    }
}
#endif
