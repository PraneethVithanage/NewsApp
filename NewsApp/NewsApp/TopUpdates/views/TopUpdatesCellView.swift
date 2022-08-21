//
//  TopUpdatesCellView.swift
//  NewsApp
//
//  Created by MacBook on 2022-08-20.
//

import SwiftUI

struct TopUpdatesCellView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Image("kandy")
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(width: UIScreen.main.bounds.width - 40, height: 120)
                .cornerRadius(30)
            Text("2022 Mar 19")
                .font(.system(size: 8))
                .foregroundColor(.gray)
            Text("Mexico's ex-attorney general arrested over disappearance of 43 students in 2014 - The Guardian")
                .font(Font.body.bold())
                .font(.system(size: 10))
            Text("MexicoJesús Murillo held on charges of forced disappearance, torture and obstruction of justice in notorious Guerrero case\r\nSat 20 Aug 2022 04.30 BST\r\nMexicos former attorney general has been arreste… [+3974 chars]")
                .font(.system(size: 12))
                .foregroundColor(.black)
            Text("Guardian staff reporter")
                .font(.system(size: 10))
                .font(Font.body.bold())
            
        }
    }
}

struct TopUpdatesCellView_Previews: PreviewProvider {
    static var previews: some View {
        TopUpdatesCellView()
    }
}
