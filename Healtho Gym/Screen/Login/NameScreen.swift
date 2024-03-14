//
//  NameScreen.swift
//  Healtho Gym
//
//  Created by CodeForAny on 13/03/24.
//

import SwiftUI

struct NameScreen: View {
    @State var showGoal = false
    @State var txtName = ""
    
    
    var body: some View {
        ZStack{
            ScrollView{
                
                VStack(spacing: 20) {
                    
                    Text("Enter Your Name")
                        .font(.customfont(.semiBold, fontSize: 18))
                        .maxLeft
                        .top15
                    
                    TextField("ie. Ashish Chutake", text: $txtName)
                        .horizontal20
                        .frame(height: 50)
                        .foregroundColor(.primaryText)
                        .background( Color.txtBG )
                        .overlay( RoundedRectangle(cornerRadius: 25.0).stroke(Color.board, lineWidth: 1) )
                        .bottom15
                    
                    Button {
                        showGoal = true
                    } label: {
                        Text("NEXT")
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
        .bgNavLink(content: GoalScreen(), isAction: $showGoal)
        .navHide
    }
}

#Preview {
    NameScreen()
}
