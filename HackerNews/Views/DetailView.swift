//
//  DetailView.swift
//  HackerNews
//
//  Created by Ilya Gladyshev on 5/26/24.
//

import SwiftUI

struct DetailView: View {
    let url: String?
    
    var body: some View {
        WebView(urlString: url).navigationBarHidden(true)
    }
}

#Preview {
    DetailView(url: "")
}
