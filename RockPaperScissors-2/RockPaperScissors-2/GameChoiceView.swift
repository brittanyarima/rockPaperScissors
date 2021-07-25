//
//  GameChoiceView.swift
//  RockPaperScissors-2
//
//  Created by Brittany Rima on 7/24/21.
//

import SwiftUI

struct GameChoiceView: View {
    var gameChoice: String
    
    var body: some View {
        Text("\(gameChoice)")
            .font(.system(size: 35, weight: .black))
    }
}

struct GameChoiceView_Previews: PreviewProvider {
    static var previews: some View {
        GameChoiceView(gameChoice: "Try to win")
    }
}
