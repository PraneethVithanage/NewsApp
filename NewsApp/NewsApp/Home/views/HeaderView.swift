//
//  HeaderView.swift
//  NewsApp
//
//  Created by MacBook on 2022-08-20.
//

import SwiftUI

struct HeaderView: View {
    
    @Binding var userName: String
    @Binding var isNotify: Bool
    @Binding var isTabbarVisible: Bool
    @Binding var isAllVisible: Bool
    
    var body: some View {
        
        VStack {
            HStack {
                TextField("Enter Something here", text: $userName)
                    .frame( height: 40)
                    .padding(.leading)
                    .overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.gray, lineWidth: 1))
                
                Image("notification_bell")
                    .resizable()
                    .scaledToFill()
                    .padding(15)
                    .frame(width: 50, height: 50)
                    .cornerRadius(25)
                    .background(Theme.primary.color)
                    .clipShape(Circle())
                    .onTapGesture {
                        self.isNotify.toggle()
                        self.isTabbarVisible.toggle()
                    }
            }.padding(.leading)
                .padding(.trailing)
            HStack {
                Text("Latest News")
                    .font(Font.body.bold())
                Spacer()
                Text("see All")
                    .foregroundColor(Color.blue)
                    .onTapGesture {
                        self.isTabbarVisible.toggle()
                        self.isAllVisible.toggle()
                    }
            }.padding(.leading)
                .padding(.trailing)
        }.padding(.top, 5)
    }
}

