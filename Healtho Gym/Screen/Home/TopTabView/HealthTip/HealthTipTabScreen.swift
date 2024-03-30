//
//  HealthTipTabScreen.swift
//  Healtho Gym
//
//  Created by CodeForAny on 23/03/24.
//

import SwiftUI

struct HealthTipTabScreen: View {
    
    @State var listArr = [
        [

          "title": "A Diet Without Exercise is Useless. ",
          "subtitle":
              "Interval training is a form of exercise in which you. alternate between  or more exercise..",
          "image": "home_1",
        ],
          [
          "title": "Garlic As fresh and Sweet as baby's Breath. ",
          "subtitle":
              "Garlic is the plant in the onion family that's grown alternate between  or more exercise..",
          "image": "home_2",
        ],
          [
          "title": "Garlic As fresh and Sweet as baby's Breath. ",
          "subtitle":
              "Garlic is the plant in the onion family that's grown alternate between  or more exercise..",
          "image": "home_3",
          ],
      ]
    
    var body: some View {
        ZStack{
            
            ScrollView{
                LazyVStack(spacing: 15) {
                    ForEach(0 ..< listArr.count, id: \.self) {
                        index in
                        
                        let obj = listArr[index]
                        
                        
                        Button(action: {
                            
                        }, label: {
                            
                            ZStack(alignment: .top){
                                Image(obj["image"] ?? "" )
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: .screenWidth - 30, height: .widthPer(per: 0.5) - 15)
                                    .padding(.top, 60)
                                
                                
                                VStack{
                                    
                                    Text(obj["title"] ?? "")
                                        .multilineTextAlignment(.leading)
                                        .font(.customfont(.medium, fontSize: 14))
                                        .maxLeft
                                    
                                    Text(obj["subtitle"] ?? "")
                                        .multilineTextAlignment(.leading)
                                        .font(.customfont(.light, fontSize: 10))
                                        .maxLeft
                                    
                                }
                                .all15
                                .background(Color.white)
                                .cornerRadius(10)
                                .shadow(radius: 2)
                                
                            }
                            
                        })
                        .maxLeft
                        .foregroundColor(.primaryText)
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 2)
                        
                    }
                }
                .all15
            }
            
        }
    }
}

#Preview {
    HealthTipTabScreen()
}
