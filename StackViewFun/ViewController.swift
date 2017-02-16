//
//  ViewController.swift
//  StackViewFun
//
//  Created by Don Mag on 2/16/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet var theLabels: [UILabel]!
	@IBOutlet var theStack: UIStackView!
	
	var theAnswers: [String]?
	
	var answerSets: [[String]] =
		[
			[ "This is an answer.", "Here is another answer.", "Third answer in the first set.", "Set one, answer 4.", "And the 5th answer." ],
			[ "hat die Ausweisnummer 47145.", "kommt aus Deutschland.", "hat di Blutgruppe AB.", "nimmt Medikamente ein.", "hat eine Allergie gegen Laktose." ],
			[ "This is answer 1 in set 3.", "Here is another answer.", "The third answer in the third question set, long enough for three lines.", "Set 3, answer 4.", "And the last answer in question set number 3, also wrapping to 3 lines." ],
			[ "First set, shuffled", "kommt aus Deutschland und hat di Blutgruppe AB.", "nimmt Medikamente ein.", "hat die Ausweisnummer 47145.", "hat eine Allergie gegen Laktose." ]
	]
	
	var setNumber: Int = 0
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		self.newAnswers()
	}
	
	func newAnswers() -> Void {
		
		theAnswers = answerSets[setNumber % answerSets.count]
		
		var i = 0
		for lbl in theLabels {
			lbl.text = theAnswers?[i]
			lbl.sizeToFit()
			i += 1
		}
		
		setNumber += 1
		
	}
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	@IBAction func doChange(_ sender: Any) {
		
		self.newAnswers()
		
	}
}

