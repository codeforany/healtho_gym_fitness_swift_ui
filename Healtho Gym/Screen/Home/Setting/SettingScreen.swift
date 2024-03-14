//
//  SettingScreen.swift
//  Healtho Gym
//
//  Created by CodeForAny on 14/03/24.
//

import SwiftUI

struct SettingScreen: View {
    
    @State var showProfile = false
    
    var body: some View {
        ZStack{
            
            VStack{
                    
                HStack{
                    Text("Setting")
                        .font(.customfont(.regular, fontSize: 18))
                        .maxLeft
                }
                .foregroundColor(.white)
                .horizontal20
                .vertical15
                .topWithSafe
                .background( Color.secondaryApp )
                
                ScrollView{
                    
                    VStack(spacing: 15) {
                        
                        SettingRow(title: "Profile", icon: "user_placeholder", isIconCircle: true) {
                            showProfile = true
                        }
                        
                        SettingRow(title: "Language options", icon: "language", value: "Eng") {
                            
                        }
                        
                        SettingRow(title: "Health Data", icon: "data") {
                            
                        }
                        
                        SettingRow(title: "Notification", icon: "notification", value: "On") {
                            
                        }
                        
                        SettingRow(title: "Refer a Friend", icon: "share") {
                            
                        }
                        
                        SettingRow(title: "Feedback", icon: "feedback") {
                            
                        }
                        
                        SettingRow(title: "Rate Us", icon: "rating") {
                            
                        }
                        
                        SettingRow(title: "Log out", icon: "logout") {
                            
                        }
                    }
                    .horizontal15
                    .vertical15
                    .bottomWithSafe
                    
                }
                
            }
            
        }
        .bgNavLink(content: ProfileScreen(), isAction: $showProfile)
        .navHide
    }
}

#Preview {
    
    NavigationView{
        SettingScreen()
    }
    
}
