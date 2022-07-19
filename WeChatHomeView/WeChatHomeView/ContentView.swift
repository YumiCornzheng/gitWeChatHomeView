//
//  ContentView.swift
//  WeChatHomeView
//
//  Created by yuming zheng on 7/13/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(spacing: 10){
            Image("JackMa")
                .resizable()
                .scaledToFill()//图片填充方式
                .frame(width: 50, height: 50)//图片的尺寸
//                .clipped()//图片裁剪
                .cornerRadius(3)//设置圆角,有裁剪图片的功能
            HStack(alignment: .top){
                VStack(alignment: .leading, spacing: 6) {
                    Text("马云").font(.system(size: 17))
                    Text("今天花呗还了吗?")
                        .font( .system(size: 15))
                        .foregroundColor(.secondary)
                }
                Spacer()
                Text("6:00")
                    .font(.system(size: 13))
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewInterfaceOrientation(.portrait)
        }
    }
}
 
