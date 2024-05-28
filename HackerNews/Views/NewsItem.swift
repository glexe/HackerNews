//
//  NewsItem.swift
//  HackerNews
//
//  Created by Ilya Gladyshev on 5/26/24.
//

import SwiftUI

struct NewsItem: View {
    let mainText: String
    let upScore: Int
    
    
    var body: some View {
        VStack {
            HStack {
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/)
                    .fill(.gray)
                    .opacity(0.4)
                    .frame(width: 70, height: 40)
                    .padding(.vertical)
                    .overlay(HStack {
                        Text(String(upScore))
                            .foregroundStyle(.blue)
                        
                    })
                Text(mainText).padding(.leading)
            }
        }
    }
}



struct NewsItem_Preview: PreviewProvider {
    static var previews: some View {
        NewsItem(mainText: "Hello World", upScore: 50).previewLayout(.sizeThatFits)
    }
}


