//
//  ChallengesTabScreen.swift
//  Healtho Gym
//
//  Created by CodeForAny on 29/03/24.
//

import SwiftUI

struct ChallengesTabScreen: View {
        
    private let colum = [
        GridItem(.flexible(), spacing: 15),
        GridItem(.flexible(), spacing: 15),
    ]
    
    @State var showDetail = false
    @State var listArr = [
        ["title":"Bench Press",
         "subtitle":"5 Weeks",
         "image":"c1"],
        ["title":"200 Situps",
         "subtitle":"10 Weeks",
         "image":"c2"],
        ["title":"100 Pushups",
         "subtitle":"8 Weeks",
         "image":"c3"],
        ["title":"300 Squats",
         "subtitle":"5 Weeks",
         "image":"c4"],
        ["title":"Run 5 Km",
         "subtitle":"5 Weeks",
         "image":"c5"],
        ["title":"300 Pushup",
         "subtitle":"14 Weeks",
         "image":"c6"],
        ["title":"200 Pushup",
         "subtitle":"10 Weeks",
         "image":"c7"],
        ["title":"100  Pushup",
         "subtitle":"10 Weeks",
         "image":"c8"],
    ]
    
    var body: some View {
        ZStack{
                
            ScrollView{
                    
                LazyVGrid(columns: colum, spacing: 15) {
                    
                    ForEach( 0 ..< listArr.count, id: \.self) {
                        index in
                            
                        let obj = listArr[index]
                        Button(action: {
                            showDetail = true
                        }, label: {
                            ZStack(alignment: .bottomLeading) {
                                Image(obj["image"] ?? "" )
                                    .resizable()
                                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                                    .aspectRatio(1, contentMode: .fill)
                                
                                VStack{
                                    Text( obj["title"] ?? "" )
                                        .font(.customfont(.semiBold, fontSize: 15))
                                        .maxCenter
                                    
                                    Text( obj["subtitle"] ?? "" )
                                        .font(.customfont(.regular, fontSize: 10))
                                        .maxCenter
                                }
                                .foregroundColor(.primaryText)
                                .padding(.horizontal, 8)
                                .padding(.vertical , 4)
                                .background( Color.primaryApp )
                                .cornerRadius(15, corner: [.bottomLeft])
                                .cornerRadius(30, corner: [.topRight])
                                .padding(.trailing, 20)
                            }
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .aspectRatio(1, contentMode: .fill)
                            .background( Color.white )
                            .cornerRadius(15)
                            .shadow(radius: 2)
                            
                        })
                        
                    }
                    
                }
                .all15
                
            }
        }
        .bgNavLink(content: WorkoutDetailScreen(), isAction: $showDetail)
        .navHide
    }
}

#Preview {
    ChallengesTabScreen()
}
