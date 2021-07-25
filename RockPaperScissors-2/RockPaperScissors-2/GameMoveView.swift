//
//  GameMoveView.swift
//  RockPaperScissors-2
//
//  Created by Brittany Rima on 7/21/21.
//

import SwiftUI

struct GameMoveView: View {
    var image: String

    var body: some View {
        
            VStack {
                Text("Game Move")
                    .font(.system(size: 25, weight: .bold))
                    
                
                ZStack {
                    Circle()
                        .frame(width: 150, height: 150)
                        .foregroundColor(.white)
                    Image(image)
                        .padding()
                        .overlay(Circle().stroke(lineWidth: 3))
                        .padding()
                }
                    
                    
            }
        
       
        
    
    }
}

struct GameMoveView_Previews: PreviewProvider {
    static var previews: some View {
        GameMoveView(image: "rock")
    }
}
