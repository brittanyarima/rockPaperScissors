//
//  ScoreView.swift
//  RockPaperScissors-2
//
//  Created by Brittany Rima on 7/24/21.
//

import SwiftUI

struct ScoreView: View {
    var score: Int
    var round: Int
    
    var body: some View {
        VStack(spacing: 5) {
            Text("Score:  \(score)")
            Text("Round:  \(round)")
        }
        .font(.system(size: 15, weight: .black))
        .foregroundColor(.black)
        .padding(25)
        
        .cornerRadius(15)
        
        
        
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(score: 0, round: 1)
    }
}
