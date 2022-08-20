//
//  MainView.swift
//  NewsApp
//
//  Created by MacBook on 2022-08-19.
//

import SwiftUI

struct MainView: View {
    @State var selected = 0
    @State private var isActivityItemHomeView: Bool = false
    @State private var isActivityNewsDetails: Bool = false
    @State private var isTabbarVisible: Bool = false
    
    var body: some View {
        
        ZStack(alignment: .bottom){
            VStack{
                if self.selected == 0 {
                    VStack(alignment: .center){
                        NavigationView {
                            VStack {
                                ScrollView(.vertical, showsIndicators: false) {
                                    VStack {
                                        Spacer()
                                        NavigationLink(destination: TopUpdateView(),isActive: $isActivityItemHomeView) {EmptyView() }
                                        NavigationLink(destination: NewsDetailsView( isTabbarVisible: $isTabbarVisible),isActive: $isActivityNewsDetails) {EmptyView()}
                                        HeaderView(userName: .constant(""),isNotify:$isActivityItemHomeView, isTabbarVisible: $isTabbarVisible)
                                        NewsTopView(isActivityNewsDetails:$isActivityNewsDetails, isTabbarVisible: $isTabbarVisible)
                                        ForEach((1...10), id: \.self) { model in
                                            HomeView()
                                        }
                                    }
                                }
                                
                            }.navigationBarHidden(true)
                                .ignoresSafeArea()
                        }.navigationViewStyle(.stack)
                            .navigationBarTitleDisplayMode(.inline)
                        
                    }
                }
                else if self.selected == 1{
                    GeometryReader{_ in
                        VStack(spacing: 15){
                            Spacer()
                            ProfileViews()
                            Image("2").resizable().frame(height: 250).cornerRadius(15)
                            Spacer()
                        }.padding()
                    }
                }
                else{
                    GeometryReader{_ in
                        VStack(spacing: 15){
                            Spacer()
                            FavoriteView()
                            Image("3").resizable().frame(height: 250).cornerRadius(15)
                            Spacer()
                        }.padding()
                    }
                }
                
            }.background(Color.white)
                .edgesIgnoringSafeArea(.all)
            if !isTabbarVisible{
                FloatingTabbar(selected: self.$selected)
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

struct FloatingTabbar : View {
    
    @Binding var selected : Int
    
    var body : some View{
        
        HStack{
            
            Spacer(minLength: 0)
            
            HStack{
                Button(action: {
                    self.selected = 0
                }) {
                    VStack{
                        Image((self.selected != 0) ? "house":"house_fill")
                        Text("Home")
                            .font(.system(size: 10))
                            .foregroundColor(self.selected == 0 ? Theme.primary.color : .gray).padding(.horizontal)
                    }
                }
                
                Spacer(minLength: 15)
                
                Button(action: {
                    self.selected = 1
                }) {
                    VStack{
                        Image((self.selected != 1) ? "heart":"heart_fill")
                        Text("Favorite")
                            .font(.system(size: 10))
                            .foregroundColor(self.selected == 1 ? Theme.primary.color : .gray).padding(.horizontal)
                    }
                }
                Spacer(minLength: 15)
                
                Button(action: {
                    self.selected = 2
                }) {
                    VStack{
                        Image((self.selected != 2) ? "profile":"profile_fill")
                        Text("Profile")
                            .font(.system(size: 10))
                            .foregroundColor(self.selected == 2 ? Theme.primary.color : .gray).padding(.horizontal)
                    }
                }
            }.padding(.vertical, 18)
                .padding(.horizontal, 18)
                .background(Color.white)
                .clipShape(Capsule())
                .padding(22)
        }
    }
}
