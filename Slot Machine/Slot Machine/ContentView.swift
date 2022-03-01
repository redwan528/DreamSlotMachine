//
//  ContentView.swift
//  Slot Machine
//
//  Created by Redwan Khan on 01/11/2021.
//

import SwiftUI

struct ContentView: View {
    
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
    
    
    @State  public var imageArrayIndex = [0,1,2,3,4,5,6,7,8,9,10,11,12,13]
    @State private var spinButton = false
    @State private var newGameButton = false
    @State  var balance = 100

    
    //@ObservedObject var viewModel: SlotMachineGameLogic

    
    var body: some View {
      
           
                VStack{
        
                    Text("Slot Machine Game").fontWeight(.bold).font(Font.largeTitle)
                    
                    Text("Balance: $" + String(balance))
                        .fontWeight(.bold).font(Font.largeTitle)
          Spacer()
                    
                    
                    
                      HStack{
                      Spacer()
                       // ZStack{
                        //SlotContent
                     
                       ZStack{
                            RoundedRectangle(cornerRadius: 5.0) .stroke(Color.red,lineWidth: 5.0).frame(width: 120, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        images[imageArrayIndex[7]].resizable().frame(width: 100.0, height: 100.0).aspectRatio(1, contentMode: .fit).foregroundColor(.purple)
                                    .background(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.red, lineWidth: 0)
                                        )
                   
                    }
                        
                
                         ZStack{
                              RoundedRectangle(cornerRadius: 5.0) .stroke(Color.red,lineWidth: 5.0).frame(width: 120, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        images[imageArrayIndex[5]].resizable().frame(width: 100.0, height: 100.0).aspectRatio(1, contentMode: .fit).foregroundColor(.red)
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.red, lineWidth: 0)
                                    )
                         }
                      
                        
                        ZStack{
                             RoundedRectangle(cornerRadius: 5.0) .stroke(Color.red,lineWidth: 5.0).frame(width: 120, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            images[imageArrayIndex[9]].resizable().frame(width: 100.0, height: 100.0).aspectRatio(1, contentMode: .fit).foregroundColor(.blue)
                               .background(
                                   RoundedRectangle(cornerRadius: 10)
                                       .stroke(Color.red, lineWidth: 0)
                                   )
                        }
                        
                       
                        
                    Spacer()
                    //}
                      }
                    
                    
                   Spacer()
                    
                    
                    HStack{
           
                    //Spin Button
                    Button(action: {
                        self.balance -= 5
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
                        
                    }, label:{
                        VStack{
                            
                            Image(systemName: "arrow.clockwise.circle.fill").foregroundColor(.red).font(.system(size: 40))
                            
                            Text("Spin").bold()
                                .foregroundColor(.blue)
                               // .padding(.all, 10)
                    
                        }
                    }
                    )
                      
                        Spacer()
                            
                            //New Game Button
                            Button(action: {
                                newGameButton.toggle()
                                if newGameButton{
                                    balance = 100
                                   
                
                                }
                             
                            }, label:{
                                VStack{
                                
                                    Image(systemName: "play.fill").foregroundColor(.red).font(.system(size: 40))
                                  
                                        
                                      Text("New Game").bold()
                                          .foregroundColor(.blue)
                                        .padding(.bottom, 5)
                                        
                                         // .padding(3)
                                    
                             
                                }
                            }
                            )
                  
                }
            }
            }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
