//
//  WorkoutIntroductionScreen.swift
//  Healtho Gym
//
//  Created by CodeForAny on 27/03/24.
//

import SwiftUI

struct WorkoutIntroductionScreen: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
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
                    
                    Text("Introduction")
                        .font(.customfont(.regular, fontSize: 18))
                        .maxLeft
                }
                .foregroundColor(Color.white)
                .horizontal20
                .vertical15
                .topWithSafe
                .background(Color.secondaryApp)
                
                ScrollView{
                        
                    LazyVStack(spacing: 25) {
                        
                        VStack(spacing: 15) {
                            Text("Complete the Beginner Program")
                                .font(.customfont(.semiBold, fontSize: 15))
                                .maxLeft
                            
                            Text("Discription")
                                .font(.customfont(.medium, fontSize: 15))
                                .maxLeft
                            
                            Text("This is a beginner quick start guide that will move you from day 1 to day 60, providing you with starting training and instructions...")
                                .font(.customfont(.regular, fontSize: 12))
                                .maxLeft
                        }
                        
                        VStack(spacing: 15) {
                            Text("Duration")
                                .font(.customfont(.regular, fontSize: 14))
                                .maxLeft
                                .foregroundColor(.placeholder)
                            
                            Text("5 Weeks")
                                .font(.customfont(.semiBold, fontSize: 14))
                                .maxLeft
                           
                        }
                        
                        VStack(spacing: 15) {
                            Text("Goal")
                                .font(.customfont(.regular, fontSize: 14))
                                .maxLeft
                                .foregroundColor(.placeholder)
                            
                            Text("Muscle Building")
                                .font(.customfont(.semiBold, fontSize: 14))
                                .maxLeft
                           
                        }
                        
                        VStack(spacing: 15) {
                            Text("Training Level")
                                .font(.customfont(.regular, fontSize: 14))
                                .maxLeft
                                .foregroundColor(.placeholder)
                            
                            Text("Beginner")
                                .font(.customfont(.semiBold, fontSize: 14))
                                .maxLeft
                           
                        }
                        
                        
                        VStack(spacing: 15) {
                            Text("Days per Week")
                                .font(.customfont(.regular, fontSize: 14))
                                .maxLeft
                                .foregroundColor(.placeholder)
                            
                            Text("4 Days")
                                .font(.customfont(.semiBold, fontSize: 14))
                                .maxLeft
                           
                        }
                        
                        VStack(spacing: 15) {
                            Text("Target Gender")
                                .font(.customfont(.regular, fontSize: 14))
                                .maxLeft
                                .foregroundColor(.placeholder)
                            
                            Text("Male and Female")
                                .font(.customfont(.semiBold, fontSize: 14))
                                .maxLeft
                           
                        }
                        
                    }
                    .horizontal15
                    .all15
                    .bottomWithSafe
                    
                }
            }
        }
        .navHide
    }
}

#Preview {
    WorkoutIntroductionScreen()
}
