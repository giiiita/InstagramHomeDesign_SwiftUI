//
//  DetailView.swift
//  Landmarks
//
//  Created by giiiita on 2019/08/06.
//  Copyright © 2019 giiiita. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    var landmark: Landmark
    
    var body: some View {
        VStack(alignment: .center) {
            self.landmark.image
                
        }
    }
}

#if DEBUG
struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(landmark: landmarkData[0])
    }
}
#endif
