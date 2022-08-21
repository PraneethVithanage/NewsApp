//
//  ContentView.swift
//  NewsApp
//
//  Created by MacBook on 2022-08-19.
//

//import SwiftUI
// 
//struct ContentView: View {
     
//    @State var selected = 0
//
//    var body: some View {
//
//        ZStack(alignment: .bottom){
//
//            VStack{
//
//                if self.selected == 0{
//                    GeometryReader{_ in
//                        VStack(spacing: 15){
//                            Spacer()
//                            Text("Home")
//                                .font(.title)
//                                .foregroundColor(.white)
//                            Image("1").resizable().frame(height: 250).cornerRadius(15)
//                            Spacer()
//                        }.padding()
//                    }
//                }
//                else if self.selected == 1{
//                    GeometryReader{_ in
//                        VStack(spacing: 15){
//                            Spacer()
//                            Text("Wishlist")
//                                .font(.title)
//                                .foregroundColor(.white)
//                            Image("2").resizable().frame(height: 250).cornerRadius(15)
//                            Spacer()
//                        }.padding()
//                    }
//                }
//                else{
//                    GeometryReader{_ in
//                        VStack(spacing: 15){
//                            Spacer()
//                            Text("Cart")
//                                .font(.title)
//                                .foregroundColor(.white)
//                            Image("3").resizable().frame(height: 250).cornerRadius(15)
//                            Spacer()
//                        }.padding()
//                    }
//                }
//
//            }.background(Color.gray)
//            .edgesIgnoringSafeArea(.all)
//
//            FloatingTabbar(selected: self.$selected)
//        }
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
//
//struct FloatingTabbar : View {
//
//    @Binding var selected : Int
//
//    var body : some View{
//
//        HStack{
//
//            Spacer(minLength: 0)
//
//            HStack{
//                    Button(action: {
//                        self.selected = 0
//                    }) {
//                        Image(systemName: "house").foregroundColor(self.selected == 0 ? .green : .gray).padding(.horizontal)
//                    }
//
//                    Spacer(minLength: 15)
//
//                    Button(action: {
//                        self.selected = 1
//                    }) {
//                        Image(systemName: "suit.heart").foregroundColor(self.selected == 1 ? .green : .gray).padding(.horizontal)
//                    }
//
//                    Spacer(minLength: 15)
//
//                    Button(action: {
//                        self.selected = 2
//                    }) {
//                        Image(systemName: "cart").foregroundColor(self.selected == 2 ? .green : .gray).padding(.horizontal)
//                    }
//            }.padding(.vertical, 18)
//            .padding(.horizontal, 18)
//            .background(Color.white)
//            .clipShape(Capsule())
//            .padding(22)
//        }
//    }
//}
