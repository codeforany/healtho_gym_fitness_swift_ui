//
//  ExerciseDetailsScreen.swift
//  Healtho Gym
//
//  Created by CodeForAny on 25/03/24.
//

import SwiftUI

struct ExerciseDetailsScreen: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State var imageArr = ["ed_1", "ed_2"]
    
    var body: some View {
        ZStack{
            VStack(spacing:0) {
                HStack{
                    Button(action: {
                        mode.wrappedValue.dismiss()
                    }, label: {
                        Image("back_white")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                    })
                    
                    Text("Bench Press")
                        .font(.customfont(.regular, fontSize: 18))
                        .maxLeft
                }
                .foregroundColor(Color.white)
                .horizontal20
                .vertical15
                .topWithSafe
                .background(Color.secondaryApp)
                
                ScrollView{
                    
                    VStack(spacing: 15) {
                        ScrollView(.horizontal, showsIndicators: false) {
                            
                            LazyHStack(spacing: 15) {
                                ForEach(0 ..< imageArr.count, id: \.self) {
                                    index in
                                    
                                    Image(imageArr[index])
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: .widthPer(per: 0.8), height: .widthPer(per: 0.4))
                                        .cornerRadius(15)
                                    
                                }
                            }
                            .all15
                        }
                        
                        VStack(spacing: 15) {
                            
                            Text("Bench Press")
                                .font(.customfont(.semiBold, fontSize: 15))
                                .maxLeft
                            
                            Text("1) Lie back on a flat bench. Using a medium width grip, lift the bar from the rack and hold it straight over you with your arms locked. This will be your starting position.")
                                .font(.customfont(.regular, fontSize: 13))
                                .maxLeft
                            
                            Text("2) From the starting position, breathe in and begin coming down slowly until the bar touches your middle chest.")
                                .font(.customfont(.regular, fontSize: 13))
                                .maxLeft
                            
                            Text("3) After a brief pause, push the bar back to the starting position as you breathe out.")
                                .font(.customfont(.regular, fontSize: 13))
                                .maxLeft
                                .bottom15
                            
                            Text("Equipment Required")
                                .font(.customfont(.semiBold, fontSize: 15))
                                .maxLeft
                            
                            Text("Barbell, Bench , Plate, Lock")
                                .font(.customfont(.regular, fontSize: 13))
                                .maxLeft
                                .bottom15
                            
                            Text("Target Muscle")
                                .font(.customfont(.semiBold, fontSize: 15))
                                .maxLeft
                            
                            Text("Chest, Shoulder, Triceps")
                                .font(.customfont(.regular, fontSize: 13))
                                .maxLeft
                                .bottom15
                            
                        }
                        .horizontal15
                       
                    }
                    
                }
            }
            
            VStack{
                
                Spacer()
                
                HStack{
                    
                    Spacer()
                    
                    HStack{
                        Button(action: {
                            
                        }, label: {
                            Image("fav_color")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                        })
                        
                        Button(action: {
                            
                        }, label: {
                            Image("share")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                        })
                        
                    }
                    .horizontal20
                    .vertical15
                    .background(Color.white)
                    .cornerRadius(30)
                    .shadow(radius: 2)
                }
            }
            .padding(20)
        }
        .navHide
    }
}

#Preview {
    ExerciseDetailsScreen()
}
