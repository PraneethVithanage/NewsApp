//
//  NewsTopView.swift
//  NewsApp
//
//  Created by MacBook on 2022-08-20.
//

import SwiftUI

struct NewsTopView: View {
    @Binding var isActivityNewsDetails: Bool
    @Binding var isTabbarVisible: Bool
    var entries = ["Health","Technology","Art","Education","Technologdy","Artn","Educationn","Technologyn","Artgg","Educationgb"]
    @State private var selectedItem: String? = "Health"
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach((1...10), id: \.self) {_ in
                        VStack {
                            Image("colombo")
                                .resizable()
                                .scaledToFill()
                                .clipped()
                                .frame(width: UIScreen.main.bounds.width - 50, height: 220)
                                .cornerRadius(20)
                        }.onTapGesture{
                            self.isActivityNewsDetails.toggle()
                            self.isTabbarVisible.toggle()
                        }
                    }
                }.padding(.all, 10)
            }
            ScrollView(.horizontal, showsIndicators: false) {
                ScrollViewReader { reader in
                    HStack(spacing: 15) {
                        ForEach(entries, id: \.self) { index in
                            Text("\(index)")
                                .padding(5)
                                .foregroundColor(self.selectedItem == index ? Color.white : Color.black)
                                .foregroundColor(.black)
                                .background(
                                    self.selectedItem == index ? Color.red : Color.white, ignoresSafeAreaEdges: .bottom)
                                .cornerRadius(5)
                                .onTapGesture {
                                    self.selectedItem = index
                                }
                        }.onAppear {
                            // Here on appear scroll go to last element
                            reader.scrollTo(entries.count - 1)
                        }
                    }
                }
            }.padding(.all, 10)
        }
    }
}

