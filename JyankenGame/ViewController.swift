//
//  ViewController.swift
//  JyankenGame
//
//  Created by NakagawaMegumi on 2020/04/28.
//  Copyright © 2020 中川恵. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var gu: UIButton!
    @IBOutlet weak var cyoki: UIButton!
    @IBOutlet weak var pa: UIButton!
    @IBOutlet weak var start: UIButton!
    @IBOutlet weak var kekka: UILabel!

    
    let imageList = [UIImage(named: "janken_gu")!, UIImage(named: "janken_choki")!, UIImage(named: "janken_pa")!]
    var clear : Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        start.layer.cornerRadius = start.frame.size.height / 2
        

    }
    
    @IBAction func startTapped(_ sender: Any) {
        clear = true
        kekka.text = ""
        // 画像Arrayをアニメーションにセット
        image.animationImages = imageList
        // 間隔（秒単位）
        image.animationDuration = 2
        // 繰り返し、0 は無限ループ
        image.animationRepeatCount = 0
        // アニメーションを開始
        image.startAnimating()
    }
    
    @IBAction func guTapped(_ sender: Any) {
        if clear == true {
            // アニメーションを終了
            image.stopAnimating()
            let number = Int.random(in: 0...2)
            //ランダムに表示
            image.image = imageList[number]
        }
        
        
        if image.image == imageList[0] {
            kekka.text = "あいこ！"
        } else if image.image == imageList[1] {
            kekka.text = "勝ち！"
        } else if image.image == imageList[2] {
            kekka.text = "負け！"
        }
        clear = false
    }
    
    @IBAction func cyokiTapped(_ sender: Any) {
        if clear == true {
            // アニメーションを終了
            image.stopAnimating()
            let number = Int.random(in: 0...2)
            //ランダムに表示
            image.image = imageList[number]
        }
        
        if image.image == imageList[0] {
            kekka.text = "負け！"
        } else if image.image == imageList[1] {
            kekka.text = "あいこ！"
        } else if image.image == imageList[2] {
            kekka.text = "勝ち！"
        }
            clear = false
        }
    
    @IBAction func paTapped(_ sender: Any) {
        if clear == true {
            // アニメーションを終了
            image.stopAnimating()
            let number = Int.random(in: 0...2)
            //ランダムに表示
            image.image = imageList[number]
        }
        
        if image.image == imageList[0] {
            kekka.text = "勝ち！"
        } else if image.image == imageList[1] {
            kekka.text = "負け！"
        } else if image.image == imageList[2] {
            kekka.text = "あいこ！"
        }
        clear = false
    }
    
    
}

