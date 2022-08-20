//
//  HeaderView.swift
//  NewsApp
//
//  Created by MacBook on 2022-08-20.
//

import SwiftUI

struct HeaderView: View {
    
    @Binding var userName: String
    
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
                
            }.padding(.leading)
                .padding(.trailing)
            HStack {
                Text("Latest News")
                    .font(Font.body.bold())
                Spacer()
                Text("see All")
                    .foregroundColor(Color.blue)
            }.padding(.leading)
                .padding(.trailing)
        }.padding(.top, 30)
    }
}


struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(userName: .constant(""))
    }
}
