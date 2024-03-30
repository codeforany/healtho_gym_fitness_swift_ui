//
//  ExercisesListScreen.swift
//  Healtho Gym
//
//  Created by CodeForAny on 25/03/24.
//

import SwiftUI

struct ExercisesListScreen: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @State var showDetails = false
    
    @State var listArr = [
        [
          "title": "Bench press",
          "image": "l_1",
        ],[
          "title": "Incline press",
          "image": "l_2",
        ],[
          "title": "Decline Press",
          "image": "l_3",
        ],[
          "title": "Dumbbell Flys",
          "image": "l_4",
        ],[
          "title": "Dumbbell Flys",
          "image": "l_5",
        ],
      ]
    
    var body: some View {
        ZStack{
            VStack{
                
                HStack{
                    Button(action: {
                        mode.wrappedValue.dismiss()
                    }, label: {
                        Image("back_white")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                    })
                    
                    Text("Chest")
                        .font(.customfont(.regular, fontSize: 18))
                        .maxLeft
                }
                .foregroundColor(Color.white)
                .horizontal20
                .vertical15
                .topWithSafe
                .background(Color.secondaryApp)
                
                ScrollView{
                    
                    LazyVStack(spacing: 15) {
                        
                        ForEach(0 ..< listArr.count, id: \.self) {
                            index in
                            
                            var obj = listArr[index]
                            
                            Button(action: {
                                showDetails = true
                            }, label: {
                                ZStack(alignment: .topLeading) {
                                    
                                    Image(obj["image"] ?? "" )
                                        .resizable()
                                        .aspectRatio(1, contentMode: .fill)
                                        .frame(width: .screenWidth - 40, height: .widthPer(per: 0.4))
                                    
                                    HStack(spacing: 0){
                                        VStack{
                                            
                                            Text(obj["title"] ?? "")
                                                .font(.customfont(.semiBold, fontSize: 15))
                                                .maxCenter
                                          
                                            
                                        }
                                        .foregroundColor(Color.primaryText)
                                        .padding(.horizontal, 8)
                                        .padding(.vertical, 4)
                                        .frame( width: .widthPer(per: 0.5) ,height: 40)
                                        .background( Color.primaryApp )
                                        .cornerRadius(15, corner: [.topLeft])
                                        .cornerRadius(30, corner: [.bottomRight])
                                        
                                        Spacer()
                                        
                                        Button(action: {
                                            
                                        }, label: {
                                            Image("fav_white")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 25, height: 25)
                                        })
                                        
                                        Button(action: {
                                            
                                        }, label: {
                                            Image("share_white")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 25, height: 25)
                                        })
                                        .horizontal15
                                    }
                                   
                                    
                                    
                                }
                                .frame(width: .screenWidth - 40, height: .widthPer(per: 0.4))
                                
                                .background( Color.white)
                                .cornerRadius(15)
                                .shadow(radius: 2)
                            })
                        }
                        
                    }
                    .horizontal20
                    .vertical15
                    .bottomWithSafe
                }
                
            }
            
        }
        .bgNavLink(content: ExerciseDetailsScreen(), isAction: $showDetails)
        .navHide
    }
}

#Preview {
    ExercisesListScreen()
}
