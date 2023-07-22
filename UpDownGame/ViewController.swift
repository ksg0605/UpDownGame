//
//  ViewController.swift
//  UpDownGame
//
//  Created by 김선규 on 2023/07/13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLable: UILabel!
    @IBOutlet weak var numberLable: UILabel!
    
    var comNumber = Int.random(in: 1...10)
//    var myNumber: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 1) 메인 레이블에 "선택하세요" 표시
        mainLable.text = "선택하세요"
        
        // 2) 숫자 레이블은 "" 표시
        numberLable.text = ""
        
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        // 1) 버튼의 숫자를 가져와야 함
        guard let numString = sender.currentTitle else { return }
        
        // 2) 숫자 레이블이 변하도록 (숫자에 따라)
        numberLable.text = numString
        
        // 3) 선택한 숫자를 변수에다가 저장 (선택)
//        guard let num = Int(numString) else { return }
//        myNumber = num
        
    }
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        guard let myNumString = numberLable.text else { return }
        guard let myNumber = Int(myNumString) else { return }
        
        
        
        
        
        // 1) 컴퓨터의 숫자와 내가 선택한 숫자를 비교 UP / Down / Bingo (메인레이블)
        if comNumber > myNumber {
            mainLable.text = "Up"
        } else if comNumber < myNumber {
            mainLable.text = "Down"
        } else {
            mainLable.text = "Bingo 😎"
        }
        
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        // 메인레이블 "선택하세요"
        mainLable.text = "선택하세요"
        // 컴퓨터의 랜덤숫자를 다시 선택하게
        comNumber = Int.random(in:  1...10)
        // 숫자레이블을 "" (빈문자열)
        numberLable.text = ""
        
        
    }
    
    

}

