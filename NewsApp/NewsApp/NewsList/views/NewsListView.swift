//
//  NewsListView.swift
//  NewsApp
//
//  Created by MacBook on 2022-08-20.
//

import SwiftUI

struct NewsListView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @Environment(\.safeAreaInsets) private var safeAreaInsets
    @Binding var isTabbarVisible: Bool
    @Binding var userName: String
    @State private var sheetMode: Bool = false
    
    var entries = ["Health","Technology","Art","Education","Technologdy","Artn","Educationn","Technologyn","Artgg","Educationgb"]
    @State private var selectedItem: String? = "Health"
    var body: some View {
        ZStack {
            VStack {
                HStack{
                    VStack{
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                            self.isTabbarVisible.toggle()
                        }) {
                            HStack() {
                                Image(systemName: "chevron.left")
                                    .font(.title2)
                                    .foregroundColor(.black)
                                    .frame(width: 30, height: 30)
                                    .background(.ultraThinMaterial)
                                    .cornerRadius(10)
                                Spacer()
                            } .padding(.top, 10)
                                .padding(.leading, 40)
                        }
                    }.frame(width: 50)
                    VStack {
                        TextField("Enter Something here", text: $userName)
                            .padding(.leading)
                            .frame(height: 40)
                            .overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.gray, lineWidth: 1))
                        
                    }
                    .padding(10)
                }
                HStack {
                    VStack {
                        Button(action: {
                            self.sheetMode.toggle()
                        }) {
                            HStack() {
                                Spacer()
                                Image("filter_button")
                                Spacer()
                            }
                        }.frame(width: 80, height: 30)
                    }.padding(5)
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
                ScrollView(showsIndicators: false) {
                    ForEach((1...10), id: \.self) { model in
                        HomeView()
                    }
                }
            }.navigationBarHidden(true)
            FlexibleSheet(sheetMode: sheetMode)
        }
        
    }
}

