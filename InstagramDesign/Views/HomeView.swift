//
//  HomeView.swift
//  InstagramDesign
//
//  Created by giiiita on 2019/09/05.
//  Copyright © 2019 giiiita. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    private var trailingNavigationItems: some View {
        HStack(alignment: .center) {
            Button(
                action: {},
                label: {
                    Image(systemName: "tv")
                        .foregroundColor(Color.black)
                        .padding(.trailing)
                }
            )
            Button(
                action: {},
                label: {
                    Image(systemName: "paperplane")
                        .foregroundColor(Color.black)
                }
            )
        }
    }
    private var leadingNavigationItems: some View {
        Button(
             action: {},
             label: {
                 Image(systemName: "camera")
                     .foregroundColor(Color.black)
             }
         )
    }
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView(.vertical) {
                    ScrollView(.horizontal){
                        HStack(alignment: .center) {
                            ForEach(landmarkData) { landmark in
                                StoryView(landmark: landmark)
                            }
                        }.padding([.leading, .trailing, .top])
                    }
                    ForEach(landmarkData) { landmark in
                        PostView(landmark: landmark).padding(.top)
                    }
                }
            }
            .navigationBarTitle("Instagram", displayMode: .inline)
            .navigationBarItems(leading: self.leadingNavigationItems, trailing: self.trailingNavigationItems)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
