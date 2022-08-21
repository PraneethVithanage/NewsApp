//
//  NewsDetailsView.swift
//  NewsApp
//
//  Created by MacBook on 2022-08-20.
//

import SwiftUI

struct NewsDetailsView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @Environment(\.safeAreaInsets) private var safeAreaInsets
    @Binding var isTabbarVisible: Bool
    
    private var BottomView: some View {
        
        ZStack (alignment: .top){
            Image("prommam")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .frame(height: UIScreen.main.bounds.height/2 + 20, alignment: .center)
            
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
                self.isTabbarVisible.toggle()
            }) {
                HStack() {
                    Image(systemName: "chevron.left")
                        .font(.title2)
                        .foregroundColor(.white)
                        .frame(width: 30, height: 30)
                        .background(.ultraThinMaterial)
                        .cornerRadius(10)
                    Spacer()
                } .padding(safeAreaInsets)
                    .padding(.horizontal, 40)
            }
        }
    }
    private var DetailView: some View {
        
        VStack(spacing: 0) {
            Spacer()
                .frame(height: UIScreen.main.bounds.height/2 - 20)
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Spacer()
                            .frame(height:10)
                        Text("Sigiriya is one of the most valuable historical monuments of Sri Lanka. Referred by locals as the Eighth Wonder of the World this ancient palace and fortress complex has significant archaeological importance and attracts thousands of tourists every year. It is probably the most visited tourist destination of Sri LankaSigiriya is one of the most valuable historical monuments of Sri Lanka. Referred by locals as the Eighth Wonder of the World this ancient palace and fortress complex has significant archaeological importance and attracts thousands of tourists every year. It is probably the most visited tourist destination of Sri Lanka")
                            .foregroundColor(.black)
                            .font(.system(size: 15))
                            .padding(30)
                    }
                    Spacer()
                }
                
                .frame(height: UIScreen.main.bounds.height/2 + 20)
                .background(Color.clear)
            }
            .ignoresSafeArea()
            .background(Color.white.shadow(color: .blue, radius: 10, x: 0, y: 5))
            .cornerRadius(50, corners: [.topLeft, .topRight])
            .background(Color.clear)
        }
        
    }
    
    private var RedeemCardView: some View {
        HStack {
            VStack {
                Spacer()
                VStack {
                    HStack {
                        VStack(alignment: .leading) {
                            Spacer()
                            Text("Sunday, 9 May 2021")
                                .foregroundColor(.black)
                                .fontWeight(.semibold)
                                .font(.system(size: 10))
                            Spacer()
                            HStack {
                                Text("Crypto investors should be prepared to lose all their money, BOE governor says")
                                    .foregroundColor(.black)
                                    .fontWeight(.semibold)
                                    .font(.system(size: 12))
                                Spacer()
                            }
                            Spacer()
                            HStack {
                                Text("Published by Ryan Browne")
                                    .foregroundColor(.black)
                                    .fontWeight(.semibold)
                                    .font(.system(size: 10))
                                Spacer()
                            }
                            Spacer()
                        }
                    }
                    .padding(.horizontal, 30)
                }
                .frame(height: 120)
                .padding(.vertical, 15)
                .background(.ultraThinMaterial)
                .cornerRadius(30)
                .shadow(radius: 10)
                .padding(.horizontal, 30)
            }
            
        }
        .frame(height: 450)
        .padding(.vertical, 15)
        .background(Color.clear)
    }
    
    
    var body: some View {
        
        ZStack(alignment: .top) {
            
            ScrollView() {
                VStack(spacing: 0) {
                    ZStack(alignment: .top) {
                        BottomView
                        DetailView
                        RedeemCardView
                    }
                }
            }
            .navigationBarHidden(true)
            .ignoresSafeArea()
            VStack{
                Spacer()
                HStack {
                    Spacer()
                    Image("heart_icon")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50)
                }.padding(35)
                
            }
        }
    }
    
    
}

