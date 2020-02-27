//
//  TutorDetail.swift
//  Members
//
//  Created by 王冠之 on 2020/2/27.
//  Copyright © 2020 wangkuanchih. All rights reserved.
//

import SwiftUI

struct TutorDetail: View {
    
    var name: String
    var headline: String
    var bio: String
    
    var body: some View {
        VStack {
            //設定為圓型，比起cornerRadius更有效率，因為它可以適應不同的圖片尺寸。
            Image(name)
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.orange, lineWidth: 4)
            )
            .shadow(radius: 10)
            Text(name)
                .font(.title)
            Text(headline)
                .font(.subheadline)
            //分隔線
            Divider()
            
            Text(bio)
                .font(.headline)
                .multilineTextAlignment(.leading)
                .lineLimit(50)
        }.padding().navigationBarTitle(Text(name), displayMode: .inline)
    }
}

#if DEBUG
struct TutorDetail_Previews: PreviewProvider {
    static var previews: some View {
        TutorDetail(name: "Simon Ng", headline: "Founder of AppCoda", bio: "Founder of AppCoda")
    }
}
#endif
