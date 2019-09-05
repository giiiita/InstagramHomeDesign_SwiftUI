//
//  StoryView.swift
//  InstagramDesign
//
//  Created by giiiita on 2019/09/05.
//  Copyright © 2019 giiiita. All rights reserved.
//

import SwiftUI

struct StoryView: View {
    let landmark: Landmark
    var body: some View {
        VStack(alignment: .center, spacing: 2) {
            self.landmark.image
                .resizable()
                .frame(width: 70, height: 70)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 5.0))
                .overlay(Circle().stroke(Color.orange, lineWidth: 2.0))
            
            Text(self.landmark.name)
                .font(.system(size: 12))
                .lineLimit(1)
        }
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(landmark: landmarkData[0])
    }
}
