//
//  ViewController.swift
//  MemeMaker
//
//  Created by Olga on 02.05.2020.
//  Copyright © 2020 Olga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topCaptionSegmentedControl: UISegmentedControl!
    @IBOutlet weak var bottomCaptionSegmentedControl: UISegmentedControl!
    @IBOutlet weak var topCaptionLabel: UILabel!
    @IBOutlet weak var bottomCaptionLabel: UILabel!
    
    var topChoices = [
        CaptionOption(emoji: "🕶", caption: "You know what's cool?"),
        CaptionOption(emoji: "💥", caption: "You, know what makes me mad?"),
        CaptionOption(emoji: "💕", caption: "You know what I love?")]
    
    var bottomChoices: Array = [
        CaptionOption(emoji: "🐱", caption: "Cats wearing hats"),
        CaptionOption(emoji: "🐶", caption: "Dogs carring logs"),
        CaptionOption(emoji: "🙊", caption: "Monkeys being funky")]
    
    @IBAction func topCaptionSegmentedControlAction(_ sender: UISegmentedControl) {
        setCaption(choices: topChoices, segmentControl: topCaptionSegmentedControl, captionLabel: topCaptionLabel)
        setCaption(choices: bottomChoices, segmentControl: bottomCaptionSegmentedControl, captionLabel: bottomCaptionLabel)
    }
    
    @IBAction func bottomCaptionSegmentedControlAction(_ sender: UISegmentedControl) {
        setCaption(choices: topChoices, segmentControl: topCaptionSegmentedControl, captionLabel: topCaptionLabel)
        setCaption(choices: bottomChoices, segmentControl: bottomCaptionSegmentedControl, captionLabel: bottomCaptionLabel)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
        topCaptionSegmentedControl.removeAllSegments()
        for choice in topChoices {
            topCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
        topCaptionSegmentedControl.selectedSegmentIndex = 0
        
        bottomCaptionSegmentedControl.removeAllSegments()
        for choice in bottomChoices {
            bottomCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: bottomChoices.count, animated: false)
        }
        bottomCaptionSegmentedControl.selectedSegmentIndex = 0
        
        setCaption(choices: topChoices, segmentControl: topCaptionSegmentedControl, captionLabel: topCaptionLabel)
        setCaption(choices: bottomChoices, segmentControl: bottomCaptionSegmentedControl, captionLabel: bottomCaptionLabel)
        
    }
    
    func setCaption(choices: [CaptionOption], segmentControl: UISegmentedControl, captionLabel: UILabel) {
        let index = segmentControl.selectedSegmentIndex
        captionLabel.text = choices[index].caption
    }
}

