//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by Kazuyo Kohama on 2020/09/18.
//  Copyright © 2020 k.goat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
         }
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
              // 遷移先のResultViewControllerで宣言しているxに値を代入して渡す
        resultViewController.name = textField.text!
    }

    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        // 他の画面から segue を使って戻ってきた時に呼ばれる
    }
}
