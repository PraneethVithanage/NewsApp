//
//  TopUpdateView.swift
//  NewsApp
//
//  Created by MacBook on 2022-08-20.
//

import SwiftUI

struct TopUpdateView: View {
    var body: some View {
        VStack(alignment: .center){
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    ForEach((1...10), id: \.self) { model in
                        TopUpdatesCellView()
                    }
                    
                }
            }
        }.padding(10)
    }
}

struct TopUpdateView_Previews: PreviewProvider {
    static var previews: some View {
        TopUpdateView()
    }
}
