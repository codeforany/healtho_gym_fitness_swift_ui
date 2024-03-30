//
//  FindWorkoutPlanScreen.swift
//  Healtho Gym
//
//  Created by CodeForAny on 25/03/24.
//

import SwiftUI

struct FindWorkoutPlanScreen: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State var selectGoal: NSDictionary?
    @State var selectLevel: NSDictionary?
    @State var selectWeek: NSDictionary?
    @State var selectDayPerWeek: NSDictionary?
    
    
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
                    
                    Text("Find a Workout Plan")
                        .font(.customfont(.regular, fontSize: 18))
                        .maxLeft
                }
                .foregroundColor(Color.white)
                .horizontal20
                .vertical15
                .topWithSafe
                .background(Color.secondaryApp)
                
                VStack(spacing: 25) {
                    
                    RoundDropDown(select: $selectGoal, placeholder: "Choose Goal", listArr: [ ["name": "Goal 1"], ["name": "Goal 2"], ["name": "Goal 3"], ] )
                    
                    RoundDropDown(select: $selectLevel, placeholder: "Choose Level", listArr: [ ["name": "Level 1"], ["name": "Level 2"], ["name": "Level 3"], ] )
                    
                    RoundDropDown(select: $selectWeek, placeholder: "No of Weeks", listArr: [ ["name": "Week 1"], ["name": "Weeks 2"], ["name": "Weeks 3"], ] )
                    
                    
                    RoundDropDown(select: $selectDayPerWeek, placeholder: "Days per Week", listArr: [ ["name": "1"], ["name": "2"], ["name": "3"], ] )
                        .bottom15
                    
                    
                    Button(action: {
                        
                    }, label: {
                        Text("Find Workout Plan")
                            .font(.customfont(.semiBold, fontSize: 14))
                            .maxCenter
                    })
                    .foregroundColor(.primaryText)
                    .frame(height: 50)
                    .background(  Color.primaryApp )
                    .cornerRadius(25)
                    .horizontal20
                    
                }
                .horizontal20
                .all15
                
                
                Spacer()
                
            }
            
            
            
        }
        .navHide
    }
}

#Preview {
    FindWorkoutPlanScreen()
}
