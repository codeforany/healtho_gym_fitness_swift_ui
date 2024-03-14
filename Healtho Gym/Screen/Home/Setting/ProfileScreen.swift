//
//  ProfileScreen.swift
//  Healtho Gym
//
//  Created by CodeForAny on 14/03/24.
//

import SwiftUI

struct ProfileScreen: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        ZStack{
            
            VStack{
                    
                HStack{
                        
                    Button(action: {
                        mode.wrappedValue.dismiss()
                    }, label: {
                        Image("back")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .padding(8)
                    })
                    
                    Text("Profile")
                        .font(.customfont(.regular, fontSize: 18))
                        .maxLeft
                }
                .foregroundColor(.primaryText)
                .horizontal20
                .topWithSafe
                
                ScrollView{
                    
                    VStack(spacing: 15) {
                        
                        HStack(spacing: 20) {
                                
                            Image("user_placeholder")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 100, height: 100)
                                .cornerRadius(15)
                            
                            VStack(spacing: 8) {
                                
                                Text("Ashish Chatake")
                                    .font(.customfont(.semiBold, fontSize: 15))
                                    .maxLeft
                                
                                Text("7894561230")
                                    .font(.customfont(.semiBold, fontSize: 15))
                                    .maxLeft
                                
                                Text("codeforany@gmail.com")
                                    .font(.customfont(.regular, fontSize: 12))
                                    .accentColor(.primaryText)
                                    .maxLeft
                                
                                HStack{
                                        
                                    Image("location")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 12, height: 12)
                                    
                                    Text("Mumbai")
                                        .font(.customfont(.regular, fontSize: 12))
                                        .accentColor(.primaryText)
                                        .maxLeft
                                    
                                }
                                
                            }
                            
                        }
                        
                        SettingRow(title: "Complete Tasks", icon: "completed_tasks", value: "3") {
                            
                        }
                        
                        SettingRow(title: "Level", icon: "level", value: "Beginner") {
                            
                        }
                        
                        SettingRow(title: "Goals", icon: "goal", value: "Mass Gain") {
                            
                        }
                        
                        SettingRow(title: "Challenges", icon: "challenges", value: "4") {
                            
                        }
                        
                        
                        
                        SettingRow(title: "Plans", icon: "calendar", value: "2") {
                            
                        }
                        
                        SettingRow(title: "Fitness Device", icon: "smartwatch", value: "Mi") {
                            
                        }
                        
                      
                        
                        SettingRow(title: "Refer a Friend", icon: "share") {
                            
                        }
                    }
                    .horizontal15
                    .vertical15
                    .bottomWithSafe
                    
                }
                
            }
            
        }
        .navHide
    }
}

#Preview {
    ProfileScreen()
}
