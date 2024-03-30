//
//  WorkoutPlanTabScreen.swift
//  Healtho Gym
//
//  Created by CodeForAny on 25/03/24.
//

import SwiftUI

struct WorkoutPlanTabScreen: View {
    
    @State var mArr = ["wp_1","wp_2"]
    @State var gArr = ["wp_3","wp_4"]
    
    @State var showFind = false
    @State var showCreate = false
    
    @State var showDetail = false
    
    var body: some View {
        ZStack{
            
            ScrollView {
                VStack(spacing: 15) {
                    
                    IconTitleSubtitleButton(icon: "search_circle", title: "Find a Workout Plan", subtitle: "Perfect Workout plan that fulfill your fitness goal") {
                        showFind = true
                    }
                    
                    Button(action: {
                        
                    }, label: {
                        Text("My Plan")
                            .font(.customfont(.semiBold, fontSize: 14))
                            .maxCenter
                    })
                    .foregroundColor(.primaryText)
                    .frame(height: 50)
                    .background(  Color.primaryApp )
                    .cornerRadius(15)
                    .horizontal20
                    
                    IconTitleSubtitleButton(icon: "add_big", title: "Creat New Plan", subtitle: "Customise workout plans as per your Need") {
                        showCreate = true
                    }
                    
                    
                    VStack(spacing: 8) {
                        
                        SectionMoreButtton(title: "Muscle Building" ) {
                            showDetail = true
                        }
                        
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            
                            LazyHStack(spacing: 15) {
                                ForEach(0 ..< mArr.count, id: \.self) {
                                    index in
                                    
                                    Image(mArr[index])
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: .widthPer(per: 0.8), height: .widthPer(per: 0.4))
                                        .cornerRadius(15)
                                    
                                }
                            }
                            .horizontal20
                        }
                        
                        SectionMoreButtton(title: "Gain Strength" ) {
                            showDetail = true
                        }
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            
                            LazyHStack(spacing: 15) {
                                ForEach(0 ..< gArr.count, id: \.self) {
                                    index in
                                    
                                    Image(gArr[index])
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: .widthPer(per: 0.8), height: .widthPer(per: 0.4))
                                        .cornerRadius(15)
                                    
                                }
                            }
                            .horizontal20
                        }
                        
                    }
                    
                }
                .vertical15
                .bottomWithSafe
            }
            
        }
        .bgNavLink(content: FindWorkoutPlanScreen(), isAction: $showFind)
        .bgNavLink(content: CreatePlanScreen(), isAction: $showCreate)
        .bgNavLink(content: WorkoutDetailScreen(), isAction: $showDetail)
    }
}

#Preview {
    WorkoutPlanTabScreen()
}
