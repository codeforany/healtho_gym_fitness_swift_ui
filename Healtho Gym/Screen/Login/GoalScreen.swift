//
//  GoalScreen.swift
//  Healtho Gym
//
//  Created by CodeForAny on 13/03/24.
//

import SwiftUI

struct GoalScreen: View {
    
    @State var listArr = [
        ["name":"Fat Loss"],
        ["name":"Weight Gain"],
        ["name":"Muscle Gain"],
        ["name":"Other"]
    ]
    
    @State var showValue = false
    
    @State var selectIndex = 0
    
    
    var body: some View {
        ZStack{
            ScrollView{
                
                VStack(spacing: 20) {
                    
                    Text("Select Your Goal")
                        .font(.customfont(.semiBold, fontSize: 18))
                        .maxLeft
                        .top15
                    
                    
                    ForEach( 0 ..< listArr.count, id: \.self) {
                        index in
                        
                        
                        Button(action: {
                            selectIndex = index
                        }, label: {
                                
                            Image( selectIndex == index ? "radio_select" : "radio_unselect" )
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                            
                            Text(listArr[index]["name"] ?? "" )
                                .font(.customfont(.regular, fontSize: 18))
                                .maxCenter
                        })
                        .horizontal20
                        .frame(height: 50)
                        .foregroundColor(.primaryText)
                        .background( Color.txtBG )
                        .overlay( RoundedRectangle(cornerRadius: 25.0).stroke(Color.board, lineWidth: 1) )
                    
                    }
                    
                    Button {
                        showValue = true
                    } label: {
                        Text("DONE")
                            .font(.customfont(.semiBold, fontSize: 14))
                            .horizontal15
                    }
                    .foregroundColor(.btnPrimaryText)
                    .frame(height: 50)
                    .maxCenter
                    .background(Color.primaryApp)
                    .cornerRadius(25)
                }
                .horizontal20
                .topWithSafe
                .bottomWithSafe
                
            }
        }
        .bgNavLink(content: EnterYourPhysiquesScreen(), isAction: $showValue)
        .navHide
    }
}

#Preview {
    GoalScreen()
}
