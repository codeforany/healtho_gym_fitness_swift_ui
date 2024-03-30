//
//  NotificationScreen.swift
//  Healtho Gym
//
//  Created by CodeForAny on 14/03/24.
//

import SwiftUI

struct NotificationScreen: View {
    
    @State var listArr = [
        "New Exercises and Plans Updated",
        "You Just Consulted  with our Nutritioni….",
        "Your Mobile Number is Updated",
        "Health Tips - why Breathing is important",
        "You Just Complete the Pushups Ch..."
    ]
    
    var body: some View {
        ZStack{
            
            VStack{
                
                HStack{
                    
                    Text("Notification")
                        .font(.customfont(.regular, fontSize: 18))
                        .maxLeft
                }
                .foregroundColor(.white)
                .horizontal20
                .vertical15
                .topWithSafe
                .background( Color.secondaryApp )
                
               
                    
                    ScrollView{
                        
                        LazyVStack(spacing: 15) {
                            
                            ForEach(0 ..< listArr.count , id: \.self) {
                                index in
                                
                                VStack(spacing: 0){
                                    
                                    Text(listArr[index])
                                        .font(.customfont(.semiBold, fontSize: 15))
                                        .maxLeft
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
                    
                    
                   
                
            }
            
        }
        .navHide
    }
}

#Preview {
    NotificationScreen()
}
