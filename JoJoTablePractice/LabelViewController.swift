//
//  LabelViewController.swift
//  JoJoTablePractice
//
//  Created by Tai Chin Huang on 2020/10/28.
//

import UIKit

class LabelViewController: UIViewController {
    
    @IBOutlet weak var numberLabel: UILabel!
//    var content = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let content = NSMutableAttributedString()
        var attributes: [NSMutableAttributedString.Key: Any]
        var string = ""
        
        numberLabel.numberOfLines = 0
        numberLabel.textAlignment = .center
        for i in 1...9 {
            for j in 1...9 {
                string = " \(i*j)\t"
                if i == 9 {
                    attributes = [
                        .foregroundColor: UIColor.black,
                        .backgroundColor: UIColor(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1), alpha: 1),
                        .font: UIFont.systemFont(ofSize: 15)
                    ]
                } else if (j>1 && j<5 && i+j == 10) || (j >= 5 && i == j) {
                    attributes = [
                        .foregroundColor: UIColor.red,
                        .backgroundColor: UIColor(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1), alpha: 1),
                        .font: UIFont.systemFont(ofSize: 15)
                    ]
                } else {
                    attributes = [
                        .foregroundColor: UIColor.blue,
                        .backgroundColor: UIColor.white,
                        .font: UIFont.systemFont(ofSize: 15)
                    ]
                }
                let attributedStringToAppend = NSMutableAttributedString(string: string, attributes: attributes)
                content.append(attributedStringToAppend)
            }
            content.append(NSAttributedString(string: "\n"))
        }
        numberLabel.attributedText = content
    }
}
