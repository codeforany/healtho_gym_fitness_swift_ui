//
//  IconTitleSubtitleButton.swift
//  Healtho Gym
//
//  Created by CodeForAny on 25/03/24.
//

import SwiftUI

struct IconTitleSubtitleButton: View {
    
    @State var icon = ""
    @State var title = ""
    @State var subtitle = ""
    var action: (()->())?
    
    
    var body: some View {
        Button(action: {
            action?()
        }, label: {
            HStack(spacing: 20){
                Image(icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                
                VStack{
                    Text(title)
                        .font(.customfont(.semiBold, fontSize: 15))
                        .maxLeft
                    
                    Text(subtitle)
                        .multilineTextAlignment(.leading)
                        .font(.customfont(.regular, fontSize: 12))
                        .maxLeft
                }
            }
        })
        .foregroundColor(.primaryText)
        .all15
        .background( Color.btnBG )
        .cornerRadius(15)
        .horizontal20
    }
}

#Preview {
    IconTitleSubtitleButton(icon: "search_circle", title: "Title", subtitle: "Subtitle")
}
