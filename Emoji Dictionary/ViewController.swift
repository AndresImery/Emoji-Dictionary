//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Andres Imery on 7/12/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var daCoolTableView: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        daCoolTableView.dataSource = self
        daCoolTableView.delegate = self
        emojis = makeEmojiArray()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😎"
        emoji1.birthyear = 2009
        emoji1.category = "Smiley"
        emoji1.definition = "I'm the Coolest!"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "💩"
        emoji2.birthyear = 2010
        emoji2.category = "Smiley"
        emoji2.definition = "The Stinkiest Emoji! A poop!"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "😀"
        emoji3.birthyear = 2009
        emoji3.category = "Smiley"
        emoji3.definition = "I'm so Happy!"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "🎅🏿"
        emoji4.birthyear = 2017
        emoji4.category = "People"
        emoji4.definition = "The Best Santa!"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🐹"
        emoji5.birthyear = 2011
        emoji5.category = "Animal"
        emoji5.definition = "A cute Hamster!"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "🐬"
        emoji6.birthyear = 2014
        emoji6.category = "Animal"
        emoji6.definition = "A little Dolphin!"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
    }
    
}

