//
//  LoginViewController.swift
//  TextCrunch
//
//  Created by Derek Dowling on 2015-01-12.
//  Copyright (c) 2015 Text Crunch. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
	// Text fields for user login screen
	@IBOutlet weak var emailTextField: UITextField!
	@IBOutlet weak var passwordTextField: UITextField!
	
	let testEmail = "test@gmail.com"
	let testPassword = "password"
	
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		// Get the new view controller using segue.destinationViewController.
		// Pass the selected object to the new view controller.
	}
	
	// Handles the Login button press event.
	@IBAction func loginButtonPressed(sender: AnyObject) {
		if loginUser() {
			self.performSegueWithIdentifier("Login",sender: nil)
		}
	}
	
	// Handles the Create Account button press event.
	@IBAction func createAccountButtonPressed(sender: AnyObject) {
		self.performSegueWithIdentifier("CreateAccount", sender: nil)
	}
	
	// Checks if the User has entered an email and if the email is valid.
	// Returns true if the email is valid.
	func isValidEmail() -> Bool {
		if emailTextField.text.isEmpty {
			return false
		}
		
		// TODO: compare input email to actual emails from Parse
		return (emailTextField.text == testEmail)
	}
	
	// Checks if the User has entered a password and if the password matches
	// the password linked to the given email. Returns true if password is correct.
	func isCorrectPassword() -> Bool {
		if passwordTextField.text.isEmpty {
			return false
		}
		
		//TODO: compare input email to actual emails from Parse
		return (passwordTextField.text == testPassword)
	}
	
	// Attempts to login the User in, with the given email and password
	// returns true if the User has been successfully logged in
	// returns false if the login was unsuccessful
	func loginUser() -> Bool {
		//TODO: Add user login here
		
		return isValidEmail() && isCorrectPassword()
	}
}

