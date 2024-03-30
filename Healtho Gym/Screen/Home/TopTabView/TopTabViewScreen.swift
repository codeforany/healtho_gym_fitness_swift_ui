//
//  TopTabViewScreen.swift
//  Healtho Gym
//
//  Created by CodeForAny on 23/03/24.
//

import SwiftUI

struct TopTabViewScreen: View {
    
    @State var selectTab = 0
    @State var tabNameArr = [
        "Health Tip",
        "Exercises",
        "Workout Plan",
        "Challenges",
        "Trainers",
        "Dietician"
    ]
    
    var body: some View {
        ZStack{
            
            VStack(spacing:0) {
                
                HStack{
                    
                    Text("Healtho")
                        .font(.customfont(.regular, fontSize: 18))
                        .maxLeft
                    
                }
                .foregroundColor(.white)
                .horizontal20
                .vertical15
                .topWithSafe
                .background(Color.secondaryApp)
                .padding(.bottom, 0.5)
                
                ScrollView(.horizontal) {
                    LazyHStack(spacing: 0) {
                        
                        ForEach(0 ..< tabNameArr.count, id: \.self ) {
                            index  in
                            
                            Button(action: {
                                
                                withAnimation {
                                    selectTab = index
                                }
                                
                                
                            }, label: {
                                VStack{
                                    Spacer()
                                    Text(tabNameArr[index])
                                        .font(.customfont(.regular, fontSize: 18))
                                        .foregroundColor(index == selectTab ? Color.primaryApp : Color.white )
                                        .horizontal20
                                    Spacer()
                                    
                                    Rectangle()
                                        .fill(index == selectTab ? Color.primaryApp : Color.clear)
                                        .frame(height: 2, alignment: .bottom)
                                        .horizontal15
                                        .shadow(radius: 2)
                                }
                            })
                        }
                        
                    }
                }
                .frame(height: 50)
                .background(Color.secondaryApp)
                
                TabView(selection: $selectTab,
                        content:  {
                    HealthTipTabScreen().tag(0)
                    ExercisesTabScreen().tag(1)
                    WorkoutPlanTabScreen().tag(2)
                    ChallengesTabScreen().tag(3)
                    TrainerTabScreen().tag(4)
                    DiatecianTabScreen().tag(5)
                })
                .tabViewStyle(.page(indexDisplayMode: .never))
                
                
            }
            
        }
        .navHide
    }
}

#Preview {
    TopTabViewScreen()
}
