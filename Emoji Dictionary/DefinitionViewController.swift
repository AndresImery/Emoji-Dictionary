//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Andres Imery on 7/12/23.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var definitionLabel: UILabel!
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    var emoji = "NO EMOJI"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "😎" {
            definitionLabel.text = "I'm the Coolest!"
        } else if emoji == "💩" {
            definitionLabel.text = "The Stinkiest Emoji! A poop!"
        } else if emoji == "😀" {
            definitionLabel.text = "I'm so Happy!"
        } else if emoji == "🎅🏿" {
            definitionLabel.text = "The Best Santa!"
        } else if emoji == "🐹" {
            definitionLabel.text = "A cute Hamster!"
        } else if emoji == "🐬" {
            definitionLabel.text = "A little Dolphin!"
        } else {
            definitionLabel.text = "A Lovely Church"
        }
    }

}
