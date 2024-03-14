//
//  MobileNumberScreen.swift
//  Healtho Gym
//
//  Created by CodeForAny on 13/03/24.
//

import SwiftUI

struct MobileNumberScreen: View {
    
    @State var showOTP = false
    @State var txtMobile = ""
    
    
    var body: some View {
        ZStack{
            ScrollView{
                
                VStack(spacing: 20) {
                    
                    Text("Enter Your Mobile Number")
                        .font(.customfont(.semiBold, fontSize: 18))
                        .maxLeft
                        .top15
                    
                    TextField("ie. 9876543210", text: $txtMobile)
                        .keyboardType(.phonePad)
                        .horizontal20
                        .frame(height: 50)
                        .foregroundColor(.primaryText)
                        .background( Color.txtBG )
                        .overlay( RoundedRectangle(cornerRadius: 25.0).stroke(Color.board, lineWidth: 1) )
                        .bottom15
                    
                    Button {
                        showOTP = true
                    } label: {
                        Text("VERIFY")
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
        .bgNavLink(content: OTPScreen(), isAction: $showOTP)
        .navHide
    }
}

#Preview {
    MobileNumberScreen()
}
