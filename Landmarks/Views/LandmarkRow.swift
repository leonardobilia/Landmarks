//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Leonardo Bilia on 6/23/19.
//  Copyright © 2019 Leonardo Bilia. All rights reserved.
//

import SwiftUI

struct LandmarkRow : View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            Image(landmark.imageName)
                .resizable()
                .frame(width: 50, height: 50)
            
            Text(landmark.name)
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.yellow)
            }
        }
    }
}

#if DEBUG
struct LandmarkRow_Previews : PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarkData[0])
            LandmarkRow(landmark: landmarkData[0])
                .environment(\.colorScheme, .dark)
                .preferredColorScheme(.dark)
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
#endif
