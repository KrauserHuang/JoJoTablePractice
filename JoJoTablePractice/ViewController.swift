//
//  ViewController.swift
//  JoJoTablePractice
//
//  Created by Tai Chin Huang on 2020/10/28.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let width = view.frame.width / 10 //根據你螢幕的寬度去除以10
        var x:CGFloat = 0
        let color = UIColor(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1), alpha: .random(in: 0...1))
        for i in 0...9 {
            var y:CGFloat = width //y一定要放在這裡，因為每輪一次i的值y的高度必須重新定義（假設width=39，你i由0變1，y的位置必須重回0在開始放，不然他會接著39*10=390在接下去
            for j in 0...9 {
                let label = UILabel(frame: CGRect(x: x, y: y, width: width, height: width)) //這裡會產生100個label
                label.textAlignment = .center
                if i == 0, j == 0 { //到第二個else if都是拿來標示最邊邊的數字
                    label.text = "X"
                    label.font = UIFont.boldSystemFont(ofSize: 15)
                } else if i == 0 {
                    label.text = "\(j)"
                    label.font = UIFont.boldSystemFont(ofSize: 15)
                } else if j == 0 {
                    label.text = "\(i)"
                    label.font = UIFont.boldSystemFont(ofSize: 15)
                } else if j == 9 { //最後一行著色用的
                    label.text = "\(i*j)"
                    if i % 2 == 0 {
                        label.backgroundColor = UIColor(red: 1, green: 0.5, blue: 0.2, alpha: 1)
                    } else {
                        label.backgroundColor = UIColor(red: 0.2, green: 0.7, blue: 1, alpha: 1)
                    }
                } else if (i>1 && i<5 && i+j == 10) || (j >= 5 && i == j) { //三角形標記
                    label.text = "\(i*j)"
                    label.backgroundColor = color
                } else { //剩下沒要標記的
                    label.text = "\(i*j)"
                }
                view.addSubview(label)
                y += width
            }
            x += width //由於UILabel的大小皆已設好，所以不用\n來做換行動作
        }
    }


}

