//
//  BackgroundCleanerView.swift
//  Healtho Gym
//
//  Created by CodeForAny on 28/03/24.
//

import SwiftUI

struct BackgroundCleanerView: UIViewRepresentable {
    func makeUIView(context: Context) -> some UIView {
        let view = UIView()
        DispatchQueue.main.async {
            view.superview?.superview?.backgroundColor = .clear
        }
        
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}

#Preview {
    BackgroundCleanerView()
}
