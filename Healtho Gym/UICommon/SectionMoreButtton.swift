//
//  SectionMoreButtton.swift
//  Healtho Gym
//
//  Created by CodeForAny on 26/03/24.
//

import SwiftUI

struct SectionMoreButtton: View {
    
    @State var title = ""
    var action: (()->())?
    
    var body: some View {
        HStack{
            Text(title)
                .font(.customfont(.semiBold, fontSize: 15))
                .maxLeft
                .foregroundColor(.primaryText)
            
            Button(action: {
                action?()
            }, label: {
                Text("More")
                    .font(.customfont(.regular, fontSize: 12))
                    
            })
            .foregroundColor(Color.primaryApp)
        }
        .horizontal20
    }
}

#Preview {
    SectionMoreButtton()
}
