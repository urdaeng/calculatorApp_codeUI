//
//  ViewController.swift
//  calculatorApp
//
//  Created by 강유정 on 6/20/24.
//
import UIKit
import SnapKit

class ViewController: UIViewController {
    
    var number = "0"
    let label = UILabel()
    
    let button1 = UIButton()
    let button2 = UIButton()
    let button3 = UIButton()
    let button4 = UIButton()
    let button5 = UIButton()
    let button6 = UIButton()
    let button7 = UIButton()
    let button8 = UIButton()
    let button9 = UIButton()
    let buttonPuls = UIButton()
    let buttonMinus = UIButton()
    let buttonMultiply = UIButton()
    let buttonDivide = UIButton()
    let buttonAC = UIButton()
    let button0 = UIButton()
    let buttonEqual = UIButton()
    
    let stackView1 = UIStackView()
    let stackView2 = UIStackView()
    let stackView3 = UIStackView()
    let stackView4 = UIStackView()
    let verticalStackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    private func configureUI() {
        view.backgroundColor = .black
        
        // 속성
        label.text = "\(number)"
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 60)
        label.textAlignment = .right
        
        stackView1.axis = .horizontal
        stackView1.backgroundColor = .black
        stackView1.spacing = 10
        stackView1.distribution = .fillEqually
        
        stackView2.axis = .horizontal
        stackView2.backgroundColor = .black
        stackView2.spacing = 10
        stackView2.distribution = .fillEqually
        
        stackView3.axis = .horizontal
        stackView3.backgroundColor = .black
        stackView3.spacing = 10
        stackView3.distribution = .fillEqually
        
        stackView4.axis = .horizontal
        stackView4.backgroundColor = .black
        stackView4.spacing = 10
        stackView4.distribution = .fillEqually
        
        verticalStackView.axis = .vertical
        verticalStackView.backgroundColor = .black
        verticalStackView.spacing = 10
        verticalStackView.distribution = .fillEqually
        
        [label, verticalStackView]
            .forEach { view.addSubview($0) }
        
        // 버튼 속성
        button1.setTitle("1", for: .normal)
        button1.titleLabel?.font = .boldSystemFont(ofSize: 30)
        button1.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button1.frame.size.height = 80
        button1.frame.size.width = 80
        button1.layer.cornerRadius = 40
        button1.addTarget(self, action: #selector(btnTapped), for: .touchDown)
        
        button2.setTitle("2", for: .normal)
        button2.titleLabel?.font = .boldSystemFont(ofSize: 30)
        button2.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button2.frame.size.height = 80
        button2.frame.size.width = 80
        button2.layer.cornerRadius = 40
        button2.addTarget(self, action: #selector(btnTapped), for: .touchDown)
        
        button3.setTitle("3", for: .normal)
        button3.titleLabel?.font = .boldSystemFont(ofSize: 30)
        button3.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button3.frame.size.height = 80
        button3.frame.size.width = 80
        button3.layer.cornerRadius = 40
        button3.addTarget(self, action: #selector(btnTapped), for: .touchDown)
        
        button4.setTitle("4", for: .normal)
        button4.titleLabel?.font = .boldSystemFont(ofSize: 30)
        button4.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button4.frame.size.height = 80
        button4.frame.size.width = 80
        button4.layer.cornerRadius = 40
        button4.addTarget(self, action: #selector(btnTapped), for: .touchDown)
        
        button5.setTitle("5", for: .normal)
        button5.titleLabel?.font = .boldSystemFont(ofSize: 30)
        button5.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button5.frame.size.height = 80
        button5.frame.size.width = 80
        button5.layer.cornerRadius = 40
        button5.addTarget(self, action: #selector(btnTapped), for: .touchDown)
        
        button6.setTitle("6", for: .normal)
        button6.titleLabel?.font = .boldSystemFont(ofSize: 30)
        button6.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button6.frame.size.height = 80
        button6.frame.size.width = 80
        button6.layer.cornerRadius = 40
        button6.addTarget(self, action: #selector(btnTapped), for: .touchDown)
        
        button7.setTitle("7", for: .normal)
        button7.titleLabel?.font = .boldSystemFont(ofSize: 30)
        button7.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button7.frame.size.height = 80
        button7.frame.size.width = 80
        button7.layer.cornerRadius = 40
        button7.addTarget(self, action: #selector(btnTapped), for: .touchDown)
        
        button8.setTitle("8", for: .normal)
        button8.titleLabel?.font = .boldSystemFont(ofSize: 30)
        button8.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button8.frame.size.height = 80
        button8.frame.size.width = 80
        button8.layer.cornerRadius = 40
        button8.addTarget(self, action: #selector(btnTapped), for: .touchDown)
        
        button9.setTitle("9", for: .normal)
        button9.titleLabel?.font = .boldSystemFont(ofSize: 30)
        button9.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button9.frame.size.height = 80
        button9.frame.size.width = 80
        button9.layer.cornerRadius = 40
        button9.addTarget(self, action: #selector(btnTapped), for: .touchDown)
        
        buttonPuls.setTitle("+", for: .normal)
        buttonPuls.titleLabel?.font = .boldSystemFont(ofSize: 30)
        buttonPuls.backgroundColor = .orange
        buttonPuls.frame.size.height = 80
        buttonPuls.frame.size.width = 80
        buttonPuls.layer.cornerRadius = 40
        buttonPuls.addTarget(self, action: #selector(btnTapped), for: .touchDown)
        
        buttonMinus.setTitle("-", for: .normal)
        buttonMinus.titleLabel?.font = .boldSystemFont(ofSize: 30)
        buttonMinus.backgroundColor = .orange
        buttonMinus.frame.size.height = 80
        buttonMinus.frame.size.width = 80
        buttonMinus.layer.cornerRadius = 40
        buttonMinus.addTarget(self, action: #selector(btnTapped), for: .touchDown)
        
        buttonMultiply.setTitle("*", for: .normal)
        buttonMultiply.titleLabel?.font = .boldSystemFont(ofSize: 30)
        buttonMultiply.backgroundColor = .orange
        buttonMultiply.frame.size.height = 80
        buttonMultiply.frame.size.width = 80
        buttonMultiply.layer.cornerRadius = 40
        buttonMultiply.addTarget(self, action: #selector(btnTapped), for: .touchDown)
        
        buttonDivide.setTitle("/", for: .normal)
        buttonDivide.titleLabel?.font = .boldSystemFont(ofSize: 30)
        buttonDivide.backgroundColor = .orange
        buttonDivide.frame.size.height = 80
        buttonDivide.frame.size.width = 80
        buttonDivide.layer.cornerRadius = 40
        buttonDivide.addTarget(self, action: #selector(btnTapped), for: .touchDown)
        
        buttonAC.setTitle("AC", for: .normal)
        buttonAC.titleLabel?.font = .boldSystemFont(ofSize: 30)
        buttonAC.backgroundColor = .orange
        buttonAC.frame.size.height = 80
        buttonAC.frame.size.width = 80
        buttonAC.layer.cornerRadius = 40
        buttonAC.addTarget(self, action: #selector(btnTapped), for: .touchDown)
        
        button0.setTitle("0", for: .normal)
        button0.titleLabel?.font = .boldSystemFont(ofSize: 30)
        button0.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button0.frame.size.height = 80
        button0.frame.size.width = 80
        button0.layer.cornerRadius = 40
        button0.addTarget(self, action: #selector(btnTapped), for: .touchDown)
        
        buttonEqual.setTitle("=", for: .normal)
        buttonEqual.titleLabel?.font = .boldSystemFont(ofSize: 30)
        buttonEqual.backgroundColor = .orange
        buttonEqual.frame.size.height = 80
        buttonEqual.frame.size.width = 80
        buttonEqual.layer.cornerRadius = 40
        buttonEqual.addTarget(self, action: #selector(equalBtnTapped), for: .touchDown)
        
        [button7, button8, button9, buttonPuls]
            .forEach { stackView1.addArrangedSubview($0) }
        
        [button4, button5, button6, buttonMinus]
            .forEach { stackView2.addArrangedSubview($0) }
        
        [button1, button2, button3, buttonMultiply]
            .forEach { stackView3.addArrangedSubview($0) }
        
        [buttonAC, button0, buttonEqual, buttonDivide]
            .forEach { stackView4.addArrangedSubview($0) }
        
        [stackView1, stackView2, stackView3, stackView4]
            .forEach { verticalStackView.addArrangedSubview($0) }
        
        // 제약조건 (Auto Layout)
        label.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(30)
            $0.trailing.equalToSuperview().offset(-30)
            $0.top.equalToSuperview().offset(200)
            $0.height.equalTo(100)
        }
        
        verticalStackView.snp.makeConstraints {
            $0.width.equalTo(350)
            $0.centerX.equalToSuperview()
            
            
            stackView1.snp.makeConstraints {
                $0.height.equalTo(80)
                $0.width.equalTo(350)
                $0.top.equalTo(label.snp.bottom).offset(60)
                $0.centerX.equalToSuperview()
            }
        }
    }
    
    @objc
    func btnTapped(_ sender: UIButton) {
        // 첫 입력이 아니라면 "0" 제거
        if self.number == "0" {
            self.number = ""
        }
        
        switch sender {
        case button1:
            self.number += "1"
            label.text = "\(number)"
        case button2:
            self.number += "2"
            label.text = "\(number)"
        case button3:
            self.number += "3"
            label.text = "\(number)"
        case button4:
            self.number += "4"
            label.text = "\(number)"
        case button5:
            self.number += "5"
            label.text = "\(number)"
        case button6:
            self.number += "6"
            label.text = "\(number)"
        case button7:
            self.number += "7"
            label.text = "\(number)"
        case button8:
            self.number += "8"
            label.text = "\(number)"
        case button9:
            self.number += "9"
            label.text = "\(number)"
        case button0:
            self.number += "0"
            label.text = "\(number)"
        case buttonPuls:
            self.number += "+"
            label.text = "\(number)"
        case buttonMinus:
            self.number += "-"
            label.text = "\(number)"
        case buttonDivide:
            self.number += "/"
            label.text = "\(number)"
        case buttonMultiply:
            self.number += "*"
            label.text = "\(number)"
        case buttonAC:
            self.number = "0"
            label.text = "\(number)"
            
            // 첫 입력이 아니라면 "0" 제거
            if self.number == "0" {
                self.number = ""
            }
        default:
            return
        }
    }
    
    // = 버튼 액션
    @objc
    func equalBtnTapped(_ sender: UIButton) {
        guard let result = calculate(expression: number) else {
            label.text = "Error"
            return
        }
        label.text = "\(result)"
        self.number = "\(result)"
        
        // 문자열이 비어있지 않다면 빈 문자열로 변경
        if self.number.isEmpty {
        } else {
            self.number = ""
        }
    }
    
    // 수식 문자열을 넣으면 계산해주는 메서드
    func calculate(expression: String) -> Int? {
        let expression = NSExpression(format: expression)
        if let result = expression.expressionValue(with: nil, context: nil) as? Int {
            return result
        } else {
            return nil
        }
    }
}
