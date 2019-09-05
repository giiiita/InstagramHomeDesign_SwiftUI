//
//  PostView.swift
//  InstagramDesign
//
//  Created by giiiita on 2019/09/05.
//  Copyright © 2019 giiiita. All rights reserved.
//

import SwiftUI

struct PostView: View {
    
    let landmark: Landmark
    
    var body: some View {
        VStack {
            HStack(alignment: .center) {
                self.landmark.image
                    .resizable()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5.0))
                    .overlay(Circle().stroke(Color.orange, lineWidth: 2.0))
                    .padding(.leading)
                Text(self.landmark.name)
                    .font(.system(size: 12))
                Spacer()
                Button(
                    action: {},
                    label: {
                        Image(systemName: "ellipsis")
                            .foregroundColor(Color.gray)
                            .padding(.trailing)
                    }
                )
            }
            self.landmark.image
                .resizable()
                .frame(width: UIScreen.main.bounds.width, height: 300)
            HStack(alignment: .center, spacing: 0) {
                Group {
                    Image(systemName: "heart")
                    Image(systemName: "bubble.right")
                    Image(systemName: "paperplane")
                }.padding(.leading)
                Spacer()
                Image(systemName: "bookmark")
                    .padding(.trailing)
            }.padding(.top, 5)
            Group {
                HStack(alignment: .center, spacing: 0) {
                    Text("\(self.landmark.name)").bold()
                    Text("さんが「いいね!」しました")
                    Spacer()
                }
                HStack(alignment: .center, spacing: 5) {
                    Text("\(self.landmark.name)").bold()
                    Text("sample Instargam Design")
                    Spacer()
                }
            }
            .font(.system(size: 12))
            .padding(.top, 5)
            .padding(.leading)
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(landmark: landmarkData[0])
    }
}
