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
        List {
            LandmarkRow(landmark: landmarkData[0])
            LandmarkRow(landmark: landmarkData[1])
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
