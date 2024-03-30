//
//  TrainerProfileScreen.swift
//  Healtho Gym
//
//  Created by CodeForAny on 28/03/24.
//

import SwiftUI

struct TrainerProfileScreen: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @State var isTrainer = true
    
    
    var body: some View {
        ZStack{
            VStack(spacing: 0) {
                HStack{
                    Button(action: {
                        mode.wrappedValue.dismiss()
                    }, label: {
                        Image("back")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                    })
                }
                .maxLeft
                .foregroundColor(Color.white)
                .horizontal20
                .vertical15
                .topWithSafe
                
                ScrollView{
                    LazyVStack(spacing: 15) {
                        HStack(spacing: 15) {
                            Image("t_profile")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 100, height: 100)
                                .cornerRadius(15)
                            
                            VStack(spacing: 4) {
                                
                                Text("Ashish Chutake")
                                    .font(.customfont(.semiBold, fontSize: 18))
                                    .maxLeft
                                
                                Text("Specialization in Fitness")
                                    .font(.customfont(.light, fontSize: 12))
                                    .maxLeft
                                
                                
                                HStack(spacing: 15) {
                                    
                                    Button {
                                        
                                    } label: {
                                        
                                        Text("Follow")
                                            .font(.customfont(.semiBold, fontSize: 15))
                                            .maxCenter
                                        
                                    }
                                    .foregroundColor(.primaryText)
                                    .padding(8)
                                    .background( Color.primaryApp )
                                    .cornerRadius(10)
                                    
                                    Button {
                                        
                                    } label: {
                                        
                                        Text("Contact")
                                            .font(.customfont(.semiBold, fontSize: 15))
                                            .maxCenter
                                        
                                    }
                                    .foregroundColor(.primaryText)
                                    .padding(8)
                                    .background( Color.primaryApp )
                                    .cornerRadius(10)

                                    
                                }
                                
                                HStack(spacing: 8) {
                                        
                                    Image("location")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 12, height: 12)
                                    
                                    Text("Mumbai")
                                        .font(.customfont(.light, fontSize: 12))
                                        .maxLeft
                                    
                                }
                            }
                        }
                        
                        
                        HStack(spacing: 15) {
                            
                            VStack{
                                Text("4/5")
                                    .font(.customfont(.bold, fontSize: 12))
                                    .maxCenter
                                
                                Text("Rating")
                                    .font(.customfont(.regular, fontSize: 12))
                                    .maxCenter
                            }
                            
                            Divider()
                            
                            VStack{
                                Text("78")
                                    .font(.customfont(.bold, fontSize: 12))
                                    .maxCenter
                                
                                Text("Following")
                                    .font(.customfont(.regular, fontSize: 12))
                                    .maxCenter
                            }
                            
                            Divider()
                            
                            VStack{
                                Text("5645")
                                    .font(.customfont(.bold, fontSize: 12))
                                    .maxCenter
                                
                                Text("Followers")
                                    .font(.customfont(.regular, fontSize: 12))
                                    .maxCenter
                            }
                            
                        }
                        
                        HStack{
                            
                            Button {
                                
                            } label: {
                                Image("color_fb")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 25)
                                    
                            }
                            .maxCenter
                            
                            
                            Button {
                                
                            } label: {
                                Image("tw")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 25)
                                    
                            }
                            .maxCenter
                            
                            
                            
                            Button {
                                
                            } label: {
                                Image("in")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 25)
                                    
                            }
                            .maxCenter
                            
                            
                            Button {
                                
                            } label: {
                                Image("yt")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 25)
                                    
                            }
                            .maxCenter

                            
                        }
                        
                        Divider()
                        
                        Button {
                            
                        } label: {
                            VStack{
                                Text("Certifications")
                                    .font(.customfont(.bold, fontSize: 14))
                                    .maxCenter
                                
                                Text("Advance Trainer Certification ISSA")
                                    .font(.customfont(.regular, fontSize: 12))
                                    .maxCenter
                            }
                        }
                        .vertical15
                        .horizontal20
                        .background( Color.txtBG )
                        .cornerRadius(10)
                        .overlay( RoundedRectangle(cornerRadius: 10).stroke( Color.board, lineWidth: 1 ) )
                        
                        
                        Button {
                            
                        } label: {
                            VStack{
                                Text("Awards")
                                    .font(.customfont(.bold, fontSize: 14))
                                    .maxCenter
                                
                                Text("Best in Muscle Building")
                                    .font(.customfont(.regular, fontSize: 12))
                                    .maxCenter
                            }
                        }
                        .vertical15
                        .horizontal20
                        .background( Color.txtBG )
                        .cornerRadius(10)
                        .overlay( RoundedRectangle(cornerRadius: 10).stroke( Color.board, lineWidth: 1 ) )
                        
                        Button {
                            
                        } label: {
                            VStack{
                                Text("Publish Articles")
                                    .font(.customfont(.bold, fontSize: 14))
                                    .maxCenter
                                
                                Text("Why Breathing is necessary while Gyming")
                                    .font(.customfont(.regular, fontSize: 12))
                                    .maxCenter
                            }
                        }
                        .vertical15
                        .horizontal20
                        .background( Color.txtBG )
                        .cornerRadius(10)
                        .overlay( RoundedRectangle(cornerRadius: 10).stroke( Color.board, lineWidth: 1 ) )
                        
                        Button {
                            
                        } label: {
                            VStack{
                                Text("Conferences and Expos Attended")
                                    .font(.customfont(.bold, fontSize: 14))
                                    .maxCenter
                                
                                Text("ISSA 2019")
                                    .font(.customfont(.regular, fontSize: 12))
                                    .maxCenter
                            }
                        }
                        .vertical15
                        .horizontal20
                        .background( Color.txtBG )
                        .cornerRadius(10)
                        .overlay( RoundedRectangle(cornerRadius: 10).stroke( Color.board, lineWidth: 1 ) )
                        
                        Button {
                            
                        } label: {
                            VStack{
                                Text( isTrainer ? "Personal Training Client and Feedback" : "Feedback")
                                    .font(.customfont(.bold, fontSize: 14))
                                    .maxCenter
                                
                                Text("Strict, Calm in Nature")
                                    .font(.customfont(.regular, fontSize: 12))
                                    .maxCenter
                            }
                        }
                        .vertical15
                        .horizontal20
                        .background( Color.txtBG )
                        .cornerRadius(10)
                        .overlay( RoundedRectangle(cornerRadius: 10).stroke( Color.board, lineWidth: 1 ) )

                        
                    }
                    .foregroundColor(.primaryText)
                    .horizontal20
                    .vertical15
                }
            }
        }
        .navHide
    }
}

#Preview {
    TrainerProfileScreen()
}
