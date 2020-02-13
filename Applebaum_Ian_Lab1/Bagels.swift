//
//  Bagels.swift
//  Applebaum_Ian_Lab1
//
//  Created by Ian Applebaum on 2/13/20.
//  Copyright © 2020 Ian Applebaum. All rights reserved.
//

import Foundation
class Bagels {
	struct number {
		var first:Int
		var second:Int
		var Third:Int
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
		while (randomNumber.first != guess.first || randomNumber.second != guess.second || randomNumber.Third != guess.Third) {
			if guess.first != randomNumber.first{
				if(guess.first == randomNumber.second){
					result.append("pico")
				}
				else if(guess.first == randomNumber.Third){
					result.append("pico")
				}
				else{
					result.append("bagels")
				}
			}else{
				result.append("FERMI")
			}
			if guess.second != randomNumber.second{
				if(guess.second == randomNumber.first){
					result.append("pico")
				}
				else if(guess.second == randomNumber.Third){
					result.append("pico")
				}
				else{
					result.append("bagels")
				}
				
			}else{
				result.append("FERMI")
			}
			if guess.Third != randomNumber.Third {
				if(guess.Third == randomNumber.first){
					result.append("pico")
				}
				else if(guess.Third == randomNumber.second){
					result.append("pico")
				}
				else{
					result.append("bagels")
				}
			}
			else{
				result.append("FERMI")
			}
		}
		print(result)
		
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
		return number(first: 0, second: 0, Third: 0)
	}
}
