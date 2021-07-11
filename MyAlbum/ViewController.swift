//
//  ViewController.swift
//  MyAlbum
//
//  Created by 은구 on 2021/07/11.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func touch(_ sender: Any) {
        print("Hello.")
//        버튼을 클릭할 때마다 Command Line에 "Hello."가 출력된다.
//        Main.storyboard에 있는 button을 control + 마우스 왼쪽 클릭 후
//        드래그 해서 ViewController에 가져다 대면 된다.
        
        let alert = UIAlertController(title: "Hello", message: "My First App!", preferredStyle: .alert)
//        자동완성기능을 적극활용하자(오타방지용)
//        대소문자 구분 확실하게해야함.
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
//        present를 통해 alert를 띄운다.
    }
    
}

