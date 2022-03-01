//
//  SlotMachineGameLogic.swift
//  Slot Machine
//
//  Created by Redwan Khan on 01/11/2021.
//

import Foundation
import SwiftUI
private var images = [
     
     Image(systemName: "play"),
                       Image(systemName: "arrowtriangle.down.fill"),
                       Image(systemName: "arrowtriangle.down"),
                       Image(systemName: "play.fill"),
                       Image(systemName: "circle"),
                       Image(systemName: "triangle.fill"),
                       Image(systemName: "circle.fill"),
                       Image(systemName: "square.fill"),
                       Image(systemName: "square"),
                       Image(systemName: "arrowtriangle.backward"),
                       Image(systemName: "arrowtriangle.backward.fill"),
                       Image(systemName: "diamond"),
                       Image(systemName: "diamond.fill"),

 ]
 
 private var fillImages = [Image(systemName: "arrowtriangle.down.fill"),
                           Image(systemName: "play.fill"),
                           Image(systemName: "triangle.fill"),
                           Image(systemName: "circle.fill"),
                           Image(systemName: "square.fill"),
                           Image(systemName: "arrowtriangle.backward.fill"),
                           Image(systemName: "diamond.fill"),
 
 ]
 
 
  public var imageArrayIndex = [0,1,2,3,4,5,6,7,8,9,10,11,12,13]
 private var spinButton = false
 private var newGameButton = false
   var balance = 100
    struct SlotMachineGameLogic{//generic
        private(set) var images: Array<Card>
       
   
    
        }
  
    
    //New game button logic
    func newGame(){
        
        
    }

func spinLogic(){
    balance -= 5
    if (balance<0){
        balance=0;
        return
    }
    
   imageArrayIndex.shuffle()
    
 imageArrayIndex = imageArrayIndex.map({_ in Int.random(in: 0...images.count - 2)})
    
    //SlotMachineGameLogic.spinLogic(self: SlotMachineGameLogic)
     
    for i in 0...imageArrayIndex.count - 2{
        if imageArrayIndex[i] == imageArrayIndex[i+1]{
            balance += 1000
        }
    }
}
   
      // var something = true
    
    //spin button
     func sameShape (){
 
    }

func sameColor(){
    
}


func sameOpacity(){
    
}



struct Card: Identifiable{
  
    var isMatched = false
    
    var id: Int
}
    
    


