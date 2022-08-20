//
//  HomeView.swift
//  NewsApp
//
//  Created by MacBook on 2022-08-19.
//

import SwiftUI

struct HomeView: View {
    
    //    var userData: ModelClass
    var body: some View {
        VStack {
            Image("kandy")
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(width: UIScreen.main.bounds.width - 40, height: 120)
                .cornerRadius(30)
            
        }
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        //  NewsFeeds(userData: actressModelArray[0])
        HomeView()
    }
}
