//
//  FlexibleSheet.swift
//  NewsApp
//
//  Created by MacBook on 2022-08-21.
//

import SwiftUI

struct FlexibleSheet: View {
    
    var sheetMode: Bool
    var tags = ["Recommended","Latest","Most Viewed","Channel","Following"]
    @State private var selectedItem: String? = "Recommended"
    
    init(sheetMode: Bool) {
        self.sheetMode = sheetMode
    }
    
    var body: some View {
        VStack(alignment:.center, spacing: 5) {
            HStack{
                Text("Filter")
                    .foregroundColor(.black)
                    .fontWeight(.semibold)
                    .font(.system(size: 18))
                    .padding(20)
                Spacer()
                Button(action: {
                    //   self.sheetMode.toggle()
                }) {
                    HStack() {
                        Spacer()
                        Image("filter_button")
                        Spacer()
                    }
                }.frame(width: 80, height: 30)
                    .padding(20)
            }
            HStack{
                Text("Sorted by")
                    .foregroundColor(.gray)
                    .fontWeight(.semibold)
                    .font(.system(size: 15))
                    .padding(.horizontal,20)
                
                Spacer()
            }
            
            let columns = [
                GridItem(),
                GridItem(),
                GridItem(),
            ]
            
            HStack {
                Spacer()
                LazyVGrid(columns: columns) {
                    ForEach(tags, id: \.self) { index in
                        Button(action: {}) {
                            HStack {
                                Text(index)
                                    .frame(width:CGFloat(index.count) * 10 )
                                    .font(.system(size: 15))
                                
                            }.padding(10)
                                .onTapGesture {
                                    self.selectedItem = index
                                }
                        }
                        .foregroundColor(self.selectedItem == index ? Color.white : Color.black)
                        .background(self.selectedItem == index ? Color.red : Color.white, ignoresSafeAreaEdges: .bottom)
                        .cornerRadius(.infinity)
                        .lineLimit(1)
                        .shadow(radius: 5)
                        
                    }
                }
                Spacer()
            }
            .padding(20)
            Spacer()
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))
        .offset(y: sheetMode ? UIScreen.main.bounds.height - 250 : UIScreen.main.bounds.height)
        .animation(.spring())
        .shadow(color: .gray, radius: 10)
        .edgesIgnoringSafeArea(.all)
    }
}
