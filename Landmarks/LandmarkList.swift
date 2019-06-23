//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Leonardo Bilia on 6/23/19.
//  Copyright © 2019 Leonardo Bilia. All rights reserved.
//

import SwiftUI

struct LandmarkList : View {
    var body: some View {
        
        NavigationView {
            List(landmarkData) { landmark in
                NavigationButton(destination: LandmarkDetail()) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

#if DEBUG
struct LandmarkList_Previews : PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
#endif
