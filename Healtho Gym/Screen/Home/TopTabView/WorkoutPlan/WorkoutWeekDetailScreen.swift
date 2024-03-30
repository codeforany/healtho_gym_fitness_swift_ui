//
//  WorkoutWeekDetailScreen.swift
//  Healtho Gym
//
//  Created by CodeForAny on 27/03/24.
//

import SwiftUI

struct WorkoutWeekDetailScreen: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State var listArr = [[
        "name":"Mon",
                "total": "10",
                "major": "7",
                "minor": "3",
                "is_rest" : false
              ],[
                "name":"Tue",
                "total": "10",
                "major": "7",
                "minor": "3",
                "is_rest" : false
              ],[
                "name":"Wed",
                "total": "0",
                "major": "0",
                "minor": "0",
                "is_rest" : true
              ],[
                "name":"Thu",
                "total": "10",
                "major": "7",
                "minor": "3",
                "is_rest" : false
              ],[
                "name":"Fri",
                "total": "10",
                "major": "7",
                "minor": "3",
                "is_rest" : false
              ],[
                "name":"Sat",
                "total": "0",
                "major": "0",
                "minor": "0",
                "is_rest" : true
              ],[
                "name":"Sat",
                "total": "10",
                "major": "7",
                "minor": "3",
                "is_rest" : false
              ],]
    
    @State var showDayExercise = false
    
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
                    
                    Text("Week")
                        .font(.customfont(.regular, fontSize: 18))
                        .maxLeft
                }
                .foregroundColor(Color.white)
                .horizontal20
                .vertical15
                .topWithSafe
                .background(Color.secondaryApp)
                
                ScrollView{
                        
                    LazyVStack(spacing: 15){
                        
                        ForEach(0 ..< listArr.count, id:\.self) {
                            index in
                            
                            let obj = listArr[index]
                            let isRest = obj["is_rest"] as? Bool ?? false
                            
                            Button {
                                showDayExercise = true
                            } label: {
                                HStack{
                                    Text( obj["name"] as? String ?? "" )
                                        .font(.customfont(.regular, fontSize: 17))
                                        .frame(width: 50, height: 50, alignment: .center)
                                        .foregroundColor(.primaryText)
                                        .background( Color.primaryApp )
                                        .cornerRadius(15)
                                    
                                    if(isRest) {
                                        
                                        VStack(spacing: 8) {
                                            Text( "REST" )
                                                .font(.customfont(.semiBold, fontSize: 17))
                                                .maxLeft
                                                .foregroundColor(.placeholder)
                                            
                                            Text( "For The Muscle Recovery" )
                                                .font(.customfont(.regular, fontSize: 12))
                                                .maxLeft
                                        }
                                        .foregroundColor(.primaryText)
                                        .frame(height: 60)
                                        .padding(.leading, 25)
                                        
                                    }else{
                                        VStack(spacing: 4) {
                                            
                                            HStack{
                                                Text( "Total Exercise" )
                                                    .font(.customfont(.semiBold, fontSize: 14))
                                                    .maxLeft
                                                    
                                                
                                                Text( obj["total"] as? String ?? "" )
                                                    .font(.customfont(.regular, fontSize: 12))
                                                    .frame(width: 80, alignment: .leading)
                                            }
                                            
                                            HStack{
                                                Text( "Major Exercise" )
                                                    .font(.customfont(.regular, fontSize: 12))
                                                    .maxLeft
                                                    
                                                
                                                Text( obj["major"] as? String ?? "" )
                                                    .font(.customfont(.regular, fontSize: 12))
                                                    .frame(width: 80, alignment: .leading)
                                            }
                                            
                                            HStack{
                                                Text( "Minor Exercise" )
                                                    .font(.customfont(.regular, fontSize: 12))
                                                    .maxLeft
                                                    
                                                
                                                Text( obj["minor"] as? String ?? "" )
                                                    .font(.customfont(.regular, fontSize: 12))
                                                    .frame(width: 80, alignment: .leading)
                                            }
                                            
                                        }
                                        .foregroundColor(.primaryText)
                                        .padding(.leading, 25)
                                        
                                        Image("next")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 12, height: 12)
                                    }
                                }
                            }
                            .vertical8
                            .horizontal20
                            .background(Color.txtBG)
                            .cornerRadius(10)
                            .overlay( RoundedRectangle(cornerRadius: 10).stroke(Color.board, lineWidth: 1) )

                        }
                        
                    }
                    .all15
                    .bottomWithSafe
                    
                }
            }
        }
        .bgNavLink(content: WorkoutDayExercisesScreen(), isAction: $showDayExercise)
        .navHide
    }
}

#Preview {
    WorkoutWeekDetailScreen()
}
