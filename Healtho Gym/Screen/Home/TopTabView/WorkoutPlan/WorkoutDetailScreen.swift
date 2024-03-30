//
//  WorkoutDetailScreen.swift
//  Healtho Gym
//
//  Created by CodeForAny on 27/03/24.
//

import SwiftUI

struct WorkoutDetailScreen: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State var showIndroduction = false
    @State var showWeek = false
    
    var body: some View {
        ZStack{
            VStack(spacing: 0){
                HStack{
                    Button(action: {
                        mode.wrappedValue.dismiss()
                    }, label: {
                        Image("back_white")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                    })
                    
                    Text("Muscle Building")
                        .font(.customfont(.regular, fontSize: 18))
                        .maxLeft
                }
                .foregroundColor(Color.white)
                .horizontal20
                .vertical15
                .topWithSafe
                .background(Color.secondaryApp)
                
                
                ScrollView{
                    VStack{
                        ZStack(alignment: .bottom) {
                            Image("wp_1")
                                .resizable()
                                .scaledToFill()
                                .frame(width: .screenWidth - 40, height: .widthPer(per: 0.5))
                                .clipped()
                            
                            HStack(spacing: 8){
                                VStack{
                                    Text("Goal")
                                        .font(.customfont(.regular, fontSize: 12))
                                        .maxCenter
                                    
                                    Text("Muscle Building")
                                        .font(.customfont(.regular, fontSize: 10))
                                        .maxCenter
                                }
                                
                                VStack{
                                    Text("Duration")
                                        .font(.customfont(.regular, fontSize: 12))
                                        .maxCenter
                                    
                                    Text("5 Weeks")
                                        .font(.customfont(.regular, fontSize: 10))
                                        .maxCenter
                                }
                                
                                VStack{
                                    Text("Level")
                                        .font(.customfont(.regular, fontSize: 12))
                                        .maxCenter
                                    
                                    Text("Beginner")
                                        .font(.customfont(.regular, fontSize: 10))
                                        .maxCenter
                                }
                            }
                            .vertical8
                            .horizontal15
                            .background( Color.primaryApp)
                            .cornerRadius(25, corner: [.topLeft, .topRight])
                            .horizontal15
                        }
                        
                        Button(action: {
                            showIndroduction = true
                        }, label: {
                            HStack{
                                Text("Introduction")
                                    .font(.customfont(.semiBold, fontSize: 15))
                                    .maxLeft
                                
                                Image("next")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 12, height: 12)
                                    
                            }
                        })
                        .foregroundColor(.primaryText)
                        .vertical15
                        
                        Text("This is a beginner quick start guide that will move you from day 1 to day 60, providing you with starting training and instructions...")
                            .font(.customfont(.regular, fontSize: 13))
                            .maxLeft
                            .bottom15
                        
                        
                        ZStack{
                            Rectangle()
                                .fill( Color.green )
                                .frame(width: (.screenWidth - 40) * 0.3, height: 5, alignment: .leading)
                                .cornerRadius(3)
                            
                        }
                        .frame(height: 5)
                        .maxLeft
                        .background( Color.placeholder )
                        .cornerRadius(3)
                        
                        Text("30% Complate")
                            .font(.customfont(.regular, fontSize: 10))
                            .maxRight
                            .bottom15
                        
                    }
                    .horizontal20
                        
                    LazyVStack(spacing: 15) {
                        
                        ForEach(0 ..< 6, id: \.self) {
                            index in
                            
                            Button(action: {
                                showWeek = true
                            }, label: {
                                
                                HStack{
                                    HStack(alignment: .firstTextBaseline) {
                                        
                                        Text("0\(index + 1)")
                                            .font(.customfont(.semiBold, fontSize: 17))
                                            .frame(width: 40, alignment: .center)
                                            .foregroundColor(.placeholder)
                                        
                                        VStack{
                                            
                                            Text("Week")
                                                .font(.customfont(.semiBold, fontSize: 17))
                                                .maxLeft
                                            
                                            Text("This is a beginner quick start.....")
                                                .font(.customfont(.regular, fontSize: 12))
                                                .maxLeft
                                            
                                            
                                        }
                                        .foregroundColor(.primaryText)
                                        
                                    }
                                    
                                    
                                    Image("next")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 12, height: 12)
                                    
                                }
                                
                            })
                            .all15
                            .background(  Color.txtBG )
                            .cornerRadius(10)
                            .overlay( RoundedRectangle(cornerRadius: 10.0).stroke( Color.board, lineWidth: 1 ) )
                        }
                    }
                    .horizontal20
                    .bottomWithSafe
                    
                }
            }
        }
        .bgNavLink(content: WorkoutIntroductionScreen(), isAction: $showIndroduction)
        .bgNavLink(content: WorkoutWeekDetailScreen(), isAction: $showWeek)
        .navHide
    }
}

#Preview {
    WorkoutDetailScreen()
}
