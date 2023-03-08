//

// This program asks the user for (x,y) coordinates,
// it then displays what quadrant the point resides in. 
// It also asks the user for two decimal numbers &
// tells user if it is the same number up to three decimal places.

//
//  Created by Sarah Andrew

//  Created on 2023-03-07

//  Version 1.0

//  Copyright (c) 2023 Sarah. All rights reserved.
import Foundation

// Introduction.
print("Today, we be doing two problems.")
print("Problem 1: Determining quadrant", terminator: "")
print(" on x & y coordinates.")
print("Problem 2: Decimal number placement ", terminator: "")
print("on basis of user input.")

// Declare variables
var zeroOp = 0.0
var opOne = "1"
var opTwo = "2"
var quesAns: String?


// Receive user input.
print("Which one would you like to do? (1 or 2): ")
var userSelector = readLine()

repeat {
    // If statement to see which option user selects.
if userSelector == opOne {
    // Usage of try catch to detect error.
    print("Please enter the (x) coordinate: ")
    if let xCoordDoub = Double(readLine()!) {
        print("Please enter the (y) coordinate: ")
        // Usage of try catch to detect error.
        if let yCoordDoub = Double(readLine()!) {
            // If statement to determine quadrant on basis
            // of user input. It then displays the corresponding.
             // quadrant.
            if xCoordDoub > zeroOp && yCoordDoub > zeroOp {
                print("For the point, (\(xCoordDoub), \(yCoordDoub)) lies", terminator: "")
                print(" within the first quadrant.")
            } else if xCoordDoub < zeroOp && yCoordDoub > zeroOp {
                print("For the point, (\(xCoordDoub), \(yCoordDoub)) lies", terminator: "")
                print(" within the second quadrant.")
            } else if xCoordDoub == zeroOp && yCoordDoub > zeroOp {
                print("For the point, (\(xCoordDoub), \(yCoordDoub)) lies", terminator: "")
                print(" within the positive y axises.")
            } else if xCoordDoub > zeroOp && yCoordDoub == zeroOp {
                print("For the point, (\(xCoordDoub), \(yCoordDoub)) lies", terminator: "")
                print(" within the positive x axises.")
            } else if xCoordDoub == zeroOp && yCoordDoub < zeroOp {
                print("For the point, (\(xCoordDoub), \(yCoordDoub)) lies", terminator: "")
                print(" within the negative y axises.")
            } else if xCoordDoub < zeroOp && yCoordDoub == zeroOp {
                print("For the point, (\(xCoordDoub), \(yCoordDoub)) lies", terminator: "")
                print(" within the negative x axises.")
            } else if xCoordDoub < zeroOp && yCoordDoub < zeroOp {
                print("For the point, (\(xCoordDoub), \(yCoordDoub)) lies", terminator: "")
                print(" within the third quadrant.")
            } else if xCoordDoub > zeroOp && yCoordDoub < zeroOp {
                print("For the point, (\(xCoordDoub), \(yCoordDoub)) lies", terminator: "")
                print(" within the fourth quadrant.")
            } else if xCoordDoub == zeroOp && yCoordDoub == zeroOp {
                print("For the point, (\(xCoordDoub), \(yCoordDoub)) lies", terminator: "")
                print(" within the origin.")
            } else {
                // Display error to user.
                print("Please enter valid coordinates.")
            }

        } else {
            // Display error to user.
            print("Invalid, please enter valid input.")
        }

    } else {
        // Display error to user.
        print("Invalid, please enter valid input.")
    }

    // Executes when user enters two.
    } else if userSelector == opTwo {
        print("This program tells you if the two", terminator: "")
        print(" decimal numbers entered are up to the same")
        print("decimal places including the number!")

        // Receive user input.
        print("Enter the first decimal number: ")
        // Usage of try catch to detect error.
        if let numOne = Double(readLine()!) {
            print("Enter the second decimal number: ")
            if let numTwo = Double(readLine()!) {
                // Round to three decimal places before
                // comparison.
                let numOneRound = Double(String(format: "%.3f", numOne))
                let numTwoRound = Double(String(format: "%.3f", numTwo))

                // If statement to determine if numbers are the same
                // up to three decimal places.
                if numOneRound == numTwoRound {
                    print("For the numbers,",numOne, "and", numTwo, terminator: "")
                    print(" these numbers are the same!")
                } else {
                    print("These numbers aren't the same.")
                }
            } else {
                // Display error to user.
                print("Invalid, valid input only!")
            }
        } else {
            // Display error to user.r
            print("Please enter valid input.")
        }
    } else {
        // Executes problem if user does not select one of the options.
        print("Please select either or option.")
    }
    // Executes problem in order for user to do it again.
    // It looks back if user enters "y", whereas user enters "n"
    // it'll terminate it. 
    repeat {
        // Receive user input.
        print("Would you like to play again? (y/n): ")
        quesAns = readLine()

        // If statement checking to see what user enters.
        // If enters no, display below.
        if quesAns == "n" {
            print("Thanks for playing!!")
        }

        if quesAns != "y" && quesAns != "n" {
            print("Invalid entry, please enter either y or n.")
        }

    } while quesAns != "y" && quesAns != "n"
    
} while quesAns == "y"
