//
//  Beginner.swift
//  TestMac
//
//  Created by arnab on 25/01/18.
//  Copyright © 2018 arnab. All rights reserved.
//

import Foundation

class Beginner {
    let consoleIO = ConsoleIO()

    func calculateBalance() {
        consoleIO.writeMessage("Enter amount to withdraw:")
        let withdraw = Float(consoleIO.getInput())!
        consoleIO.writeMessage("Enter total balance:")
        var balance = Float(consoleIO.getInput())!
                
        if withdraw.truncatingRemainder(dividingBy: 5) == 0 && balance - withdraw > 0 {
            balance = balance - withdraw - 0.5
        }
        print(balance)
    }
}
