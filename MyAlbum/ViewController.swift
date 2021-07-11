//
//  ViewController.swift
//  MyAlbum
//
//  Created by 은구 on 2021/07/11.
//

import UIKit

class ViewController: UIViewController {

    var currentValue = 0
//    Variable(변수)란 어떤 값을 채워 넣을 수 있는 공간
//    var currentValue: Int = 0 이라고 적어도 됨, 하지만 스위프트의 타입추론기능으로 안써도되지만 사용하는 것이 좋다.
    
    @IBOutlet weak var priceLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        priceLabel.text = "￦ \(currentValue)"
//        뷰가 로드될 때 priceLabel에 currentValue값을 할당해줌 (0원이 표시됨)
        refresh()
//        함수의 사용으로 코드의 중복사용을 막음(기술부채 감소), 코드가 클린해짐
        
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
    
    @IBAction func challenge(_ sender: Any) {
//        버튼 한 개 더 만들어보기
        let alert = UIAlertController(title: "It's a challenge", message: "Doing challenge is so happy!", preferredStyle: .alert)
        let action = UIAlertAction(title: "Yes", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func showAlert(_ sender: Any) {
//        앨범 앱용 버튼 만들기, 위에 액션들은 사용X
        let message = "가격은 ￦\(currentValue) 입니다."
//        string interpoltation : ""안에 \(변수)로 사용한다.
//        마찬가지로 message의 type은 String이다
//        let message: String = "가격은 ￦\(currentValue) 입니다."로 사용가능
        
        let alert = UIAlertController(title: "Hello", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
        refresh()

    }
    
    func refresh() {
        let randomPrice = arc4random_uniform(10000) + 1
        currentValue = Int(randomPrice)
//        randomPrice는 UInt32, currentValue는 Int이다. 그래서 randomPrice를 Int로 캐스팅
        priceLabel.text = "￦ \(currentValue)"
//        버튼을 누를 때마다 변동되는 가격이 priceLabel의 가격도 함께 업데이트됨
    }
}

