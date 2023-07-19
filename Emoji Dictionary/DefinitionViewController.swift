//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Andres Imery on 7/12/23.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var birthYearLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji.stringEmoji
        definitionLabel.text = "\(emoji.definition)"
        categoryLabel.text = "Category: \(emoji.category)"
        birthYearLabel.text = "BirthYear: \(emoji.birthyear)"
        
    }

}
