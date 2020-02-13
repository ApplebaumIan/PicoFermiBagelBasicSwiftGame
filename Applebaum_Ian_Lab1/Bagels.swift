//
//  Bagels.swift
//  Applebaum_Ian_Lab1
//
//  Created by Ian Applebaum on 2/13/20.
//  Copyright © 2020 Ian Applebaum. All rights reserved.
//

import Foundation
class Bagels {
	struct number: Equatable {
		var first:Int
		var second:Int
		var Third:Int
		static func == (lhs: number, rhs: number) -> Bool {
			return lhs.first == rhs.first && lhs.second == rhs.second && lhs.Third == rhs.Third
		}
	}
	fileprivate func checkFirstGuess(_ guess: Bagels.number, _ randomNumber: Bagels.number, _ result: inout String) {
		switch guess.first {
		case randomNumber.first:
			result.append("FERMI")
		case randomNumber.second:
			result.append("PICO")
		case randomNumber.Third:
			result.append("PICO")
		default:
			result.append("BAGELS")
		}
	}
	fileprivate func checkSecondGuess(_ guess: Bagels.number, _ randomNumber: Bagels.number, _ result: inout String) {
		switch guess.second {
		case randomNumber.second:
			result.append(" FERMI")
		case randomNumber.first:
			result.append(" PICO")
		case randomNumber.Third:
			result.append(" PICO")
		default:
			result.append(" BAGELS")
		}
	}
	fileprivate func checkThirdGuess(_ guess: Bagels.number, _ randomNumber: Bagels.number, _ result: inout String) {
		switch guess.Third {
		case randomNumber.Third:
			result.append(" FERMI")
		case randomNumber.second:
			result.append(" PICO")
		case randomNumber.first:
			result.append(" PICO")
		default:
			result.append(" BAGELS")
		}
	}
	fileprivate func getUserGuess(_ guess: inout Bagels.number) {
		let keyboad = readLine(strippingNewline: true) ?? ""
		let first: Int = Int(keyboad[0]) ?? 0
		let second: Int = Int(keyboad[1]) ?? 0
		let third: Int = Int(keyboad[2]) ?? 0
		guess = number(first: first, second: second, Third: third)
		if guess == number(first: 0, second: 0, Third: 0){
			print("000 NOT VALID TRY AGAIN")
			getUserGuess(&guess)
		}
		else if first < 10 {
			if guess == number(first: first, second: 0, Third: 0){
				print("\(first)00 NOT VALID TRY AGAIN")
				getUserGuess(&guess)
			}
		}
		if first < 10 && second < 10 {
			if guess == number(first: first, second: second, Third: 0){
				print("\(first)\(second)0 NOT VALID TRY AGAIN")
				getUserGuess(&guess)
			}
		}
	}
	
	public func playGame(){
		/*
		1. Generate the secret number
		2. Determine whether the current guess is a winner
		3. Evaluate the current guess and print hints
		*/
		print("WELCOME")
		let randomNumber = generateRandomNumber()
		var guess = number(first: 0, second: 0, Third: 0)
		var result = ""
		repeat{
			result = ""
			getUserGuess(&guess)
			checkFirstGuess(guess, randomNumber, &result)
			checkSecondGuess(guess, randomNumber, &result)
			checkThirdGuess(guess, randomNumber, &result)
			print(result)
		}while (guess != randomNumber)
		
//		result.append("FERMI FERMI FERMI")
		/*
		Generate the Secret Number
		do
			  Get User's Guess (including option to quit)
			  If (! userQuits)
			  Evaluate User's Guess
		while ( not (winningGuess or userQuits) )
		Print results – did user win or quit, and number of guesses made
		*/
	}
	private func generateRandomNumber()->number{
		let first = Int.random(in: 1 ..< 10)
		let second = Int.random(in: 1 ..< 10)
		let third = Int.random(in: 1 ..< 10)
		return number(first: first, second: second, Third: third)
	}
}
