//
//  rowImage.swift
//  swiftUI-mapkit-Landmark
//
//  Created by Mehmet Tuna Arıkaya on 13.09.2024.
//

import SwiftUI


struct LandmarkListRowImage : View {
    var landmarkImageName : String
    var body: some View {
        Image(landmarkImageName)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 50, height: 50, alignment: .leading)
    }
}

#if DEBUG
struct LandmarkListRowImage_Previews : PreviewProvider {
    static var previews: some View {
        LandmarkListRowImage(landmarkImageName: "pisa")
    }
}
#endif
