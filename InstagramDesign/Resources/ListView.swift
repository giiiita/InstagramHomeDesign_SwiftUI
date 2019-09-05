//
//  ListView.swift
//  Landmarks
//
//  Created by giiiita on 2019/08/07.
//  Copyright © 2019 giiiita. All rights reserved.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(landmarkData) { landmark in
                    LandMarkCell(landmark: landmark)
                }
            }
        }
    }
}

struct LandMarkCell: View {
    let landmark: Landmark
    
    var body: some View {
        NavigationLink(destination: DetailView(landmark: landmark)) {
            HStack {
                landmark.image
                    .resizable()
                    .frame(width: 50, height: 50)
                    .cornerRadius(8.0)
                landmark.text
            }
        }
    }
}

#if DEBUG
struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
#endif
