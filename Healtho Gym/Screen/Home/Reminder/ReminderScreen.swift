//
//  ReminderScreen.swift
//  Healtho Gym
//
//  Created by CodeForAny on 14/03/24.
//

import SwiftUI

struct ReminderScreen: View {
    var body: some View {
        ZStack{
            
            VStack{
                
                HStack{
                    
                    Text("Reminder")
                        .font(.customfont(.regular, fontSize: 18))
                        .maxLeft
                }
                .foregroundColor(.white)
                .horizontal20
                .vertical15
                .topWithSafe
                .background( Color.secondaryApp )
                
                ZStack(alignment: .bottomTrailing){
                    
                    ScrollView{
                        
                        LazyVStack(spacing: 15) {
                            
                            ForEach(0 ..< 10, id: \.self) {
                                index in
                                
                                VStack(spacing: 0){
                                    
                                    HStack{
                                        
                                        Text("Workout Reminder")
                                            .font(.customfont(.semiBold, fontSize: 15))
                                            .maxLeft
                                        
                                        
                                        Toggle(isOn: .constant(true), label: {
                                           
                                        })
                                        
                                    }
                                    
                                    Text("06 : 00 AM")
                                        .font(.customfont(.semiBold, fontSize: 15))
                                        .maxLeft
                                    
                                    HStack {
                                        Text("Repeat")
                                            .font(.customfont(.medium, fontSize: 13))
                                            .foregroundColor(.primaryApp)
                                        
                                        Text("-")
                                            .font(.customfont(.regular, fontSize: 13))
                                            .foregroundColor(.secondaryText)
                                        
                                        Text("Mon, Tue, Fri")
                                            .font(.customfont(.regular, fontSize: 13))
                                            .foregroundColor(.primaryText)
                                            .maxLeft
                                        
                                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                            Image("delete")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 25, height: 25)
                                        })
                                        
                                    }
                                    
                                    
                                }
                                .all15
                                .background( Color.txtBG)
                                .cornerRadius(15)
                                .overlay( RoundedRectangle(cornerRadius: 15).stroke( Color.board, lineWidth: 1 ) )
                                
                            }
                            
                            
                            
                            
                        }
                        
                    }
                    .horizontal20
                    .vertical15
                    .bottomWithSafe
                    
                    
                    Button(action: {}, label: {
                        Image("add_big")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                    })
                    .horizontal20
                    .bottomWithSafe
                }
                
            }
            
        }
        .navHide
    }
}

#Preview {
    ReminderScreen()
}
