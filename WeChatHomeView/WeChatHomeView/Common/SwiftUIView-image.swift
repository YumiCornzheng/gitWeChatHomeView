//
//  SwiftUIView-image.swift
//  WeChatHomeView
//
//  Created by yuming zheng on 7/13/22.
//

import SwiftUI

struct SwiftUIView_image: View {
    var body: some View {
        Image("JackMa")
            .resizable()
            .frame(width: 200, height: 200)
            .clipped()//裁剪
    }
}

struct SwiftUIView_image_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView_image()
    }
}
 
