//
//  TopUpdateView.swift
//  NewsApp
//
//  Created by MacBook on 2022-08-20.
//

import SwiftUI

struct TopUpdateView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @Environment(\.safeAreaInsets) private var safeAreaInsets
    @Binding var isTabbarVisible: Bool
    
    var body: some View {
        VStack {
            HStack{
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
                        .padding(.horizontal, 40)
                }
            }
            HStack{
                Spacer()
                Text("HotUpdates")
                    .foregroundColor(.red)
                    .font(.system(size: 15))
                Spacer()
            }
            VStack(alignment: .center){
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        ForEach((1...10), id: \.self) { model in
                            TopUpdatesCellView()
                        }
                        
                    }
                }
            }.padding(10)
            
        }.navigationBarHidden(true)
    }
    
}

