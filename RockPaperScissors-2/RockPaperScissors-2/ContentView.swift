//
//  ContentView.swift
//  RockPaperScissors-2
//
//  Created by Brittany Rima on 7/21/21.
//

import SwiftUI

struct ContentView: View {
    let possibleMoves = ["rock", "paper", "scissors"]
    @State private var gameChoice = Int.random(in: 0...2)
    @State private var playerChoice = 0
    @State private var shouldWin = Bool.random()
    @State private var playerScore = 0
    @State private var gameIsOver = false
    @State private var round = 1
    
    //    gets game move text
    var gameMove: String {
        if shouldWin {
            return "Try to win"
        } else {
            return "Try to lose"
        }
    }
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    ScoreView(score: playerScore, round: round)
                    Spacer()
                }
                .padding(.vertical, 30)
                .padding(.horizontal, 10)
                
                
                GameChoiceView(gameChoice: "\(gameMove)")
                
                
                
                    
                
                
                    
                HStack {
                    GameMoveView(image: "\(possibleMoves[gameChoice])")
                }
                .padding()
                
                
                        
                
               
                
                HStack {
                    
                    
                    Button("Rock") {
                        playerChoice = 0
                        
                        // game logic
                        if shouldWin && gameChoice == 2 {
                            playerScore += 1
                        } else if !shouldWin && gameChoice == 1 {
                            playerScore += 1
                        }
                        
                        // resume game
                        resumeGame()
                    }
                    .padding()
                    .background(Color.black)
                    .foregroundColor(.white)
                    .cornerRadius(15)
                    
                    Button("Paper") {
                        playerChoice = 1
                        
                        // game logic
                        if shouldWin && gameChoice == 0 {
                            playerScore += 1
                        } else if !shouldWin && gameChoice == 2 {
                            playerScore += 1
                        }
                        
                        // resume game
                        resumeGame()
                    }
                    .padding()
                    .background(Color.black)
                    .foregroundColor(.white)
                    .cornerRadius(15)
                    
                    Button("Scissors") {
                        playerChoice = 2
                        
                        // game logic
                        if shouldWin && gameChoice == 1 {
                            playerScore += 1
                        } else if !shouldWin && gameChoice == 0 {
                            playerScore += 1
                        }
                        
                        // resume game
                        resumeGame()
                    }
                    .padding()
                    .background(Color.black)
                    .foregroundColor(.white)
                    .cornerRadius(15)
                    
                    
                }
                .alert(isPresented: $gameIsOver) {
                    Alert(title: Text("Game Over"), message: Text("Your final score was \(playerScore)"), dismissButton: .default(Text("Play Again"), action: {
                        gameOver()
                    }))
                }
                .padding()
                
                
                
                
            }
            .navigationBarTitle("Rock | Paper | Scissors")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
            
        }
        
    }

    
    
    func resumeGame() {
        // check if game is over
        if round == 10 {
            gameIsOver = true
        } else {
            // resume game
            gameChoice = Int.random(in: 0...2)
            shouldWin = Bool.random()
            round += 1
        }
        
    }
    
    func gameOver() {
        round = 0
        playerScore = 0
        resumeGame()
    }

    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
