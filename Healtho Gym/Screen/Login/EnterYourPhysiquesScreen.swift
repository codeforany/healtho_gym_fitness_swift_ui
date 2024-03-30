//
//  EnterYourPhysiquesScreen.swift
//  Healtho Gym
//
//  Created by CodeForAny on 29/03/24.
//

import SwiftUI

struct EnterYourPhysiquesScreen: View {
        
    @State var showAge = false
    @State var showHeight = false
    @State var showWeight = false
    @State var showLevel = false
    @State var showHome = false
    
    
    var body: some View {
        ZStack{
            
            VStack(spacing: 25) {
                
                HStack{
                    Text("Enter Your Physique")
                        .font(.customfont(.semiBold, fontSize: 17))
                }
                .top15
                .horizontal20
                .topWithSafe
                
                Button {
                    showAge = true
                } label: {
                    HStack{
                        Text("Age")
                            .font(.customfont(.regular, fontSize: 16))
                            .frame(width: 80, alignment: .center)
                        
                        
                        Text("50 Yt")
                            .font(.customfont(.regular, fontSize: 16))
                            .maxCenter
                        
                    }
                }
                .horizontal20
                .foregroundColor(.primaryText)
                .frame(height: 50)
                .maxCenter
                .background( Color.btnBG )
                .cornerRadius(25)
                
                
                Button {
                    showHeight = true
                } label: {
                    HStack{
                        Text("Height")
                            .font(.customfont(.regular, fontSize: 16))
                            .frame(width: 80, alignment: .center)
                        
                        
                        Text("6 Ft 4 Inch")
                            .font(.customfont(.regular, fontSize: 16))
                            .maxCenter
                        
                    }
                }
                .horizontal20
                .foregroundColor(.primaryText)
                .frame(height: 50)
                .maxCenter
                .background( Color.btnBG )
                .cornerRadius(25)
                
                Button {
                    showWeight = true
                } label: {
                    HStack{
                        Text("Weight")
                            .font(.customfont(.regular, fontSize: 16))
                            .frame(width: 80, alignment: .center)
                        
                        
                        Text("75 Kg")
                            .font(.customfont(.regular, fontSize: 16))
                            .maxCenter
                        
                    }
                }
                .horizontal20
                .foregroundColor(.primaryText)
                .frame(height: 50)
                .maxCenter
                .background( Color.btnBG )
                .cornerRadius(25)
                
                Button {
                    showLevel = true
                } label: {
                    HStack{
                        Text("Level")
                            .font(.customfont(.regular, fontSize: 16))
                            .frame(width: 80, alignment: .center)
                        
                        
                        Text("Beginner")
                            .font(.customfont(.regular, fontSize: 16))
                            .maxCenter
                        
                    }
                }
                .horizontal20
                .foregroundColor(.primaryText)
                .frame(height: 50)
                .maxCenter
                .background( Color.btnBG )
                .cornerRadius(25)
                
                
                
                Button {
                    showHome = true
                } label: {
                    Text("Cofirm Detail")
                        .font(.customfont(.semiBold, fontSize: 14))
                      
                }
                .foregroundColor(.primaryText)
                .frame(height: 50)
                .maxCenter
                .background( Color.primaryApp )
                .cornerRadius(25)
                .top15
                
                Spacer()
            }
            .padding(.horizontal, 50)
            
        }
        .fullScreenCover(isPresented: $showAge, content: {
            SelectAgeScreen()
                .background( BackgroundCleanerView() )
        })
        
        .fullScreenCover(isPresented: $showHeight, content: {
            SelectHeightScreen()
                .background( BackgroundCleanerView() )
        })
        
        .fullScreenCover(isPresented: $showWeight, content: {
            SelectWeightScreen()
                .background( BackgroundCleanerView() )
        })
        
        .fullScreenCover(isPresented: $showLevel, content: {
            SelectLevelScreen()
                .background( BackgroundCleanerView() )
        })
        .bgNavLink(content: TopTabViewScreen(), isAction: $showHome)
        .navHide
    }
}

#Preview {
    EnterYourPhysiquesScreen()
}
