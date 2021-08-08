//
//  LoginViewControler.swift
//  Soul
//
//  Created by Нина Лукашова on 07.08.2021.
//

import UIKit

final class LoginViewControler: UIViewController {
    
    @IBOutlet private var scrollView: UIScrollView!
    @IBOutlet private var titleImageView: UIImageView!
    @IBOutlet private var titleLable: UILabel!
    @IBOutlet private var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet private var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        //Жест тапа по скролу
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        //Добавляем жест для скрола
        scrollView?.addGestureRecognizer(tapGesture)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Подписываемся на два уведомления: одно приходит при появлении клавиатуры
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWasShown), name: UIResponder.keyboardWillShowNotification, object: nil)
        // Второе — когда она пропадает
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillBeHidden(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)

    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    @IBAction private func loginButtonPressed(_ sender: UIButton) {
        //Получаем логини от пользователя
        let loginText = loginTextField.text
        
        //Получаем пароль от пользователя
        let passwordText = passwordTextField.text
        
        if loginText == "1" && passwordText == "1"{
            print("Success")
        } else {
            print("Error login or password")
        }
    }
    
    @objc func hideKeyboard(){
        self.scrollView?.endEditing(true)
    }
    
    // Когда клавиатура появляется
    @objc func keyboardWasShown(notification: Notification) {
        
        // Получаем размер клавиатуры
        let info = notification.userInfo! as NSDictionary
        let kbSize = (info.value(forKey: UIResponder.keyboardFrameEndUserInfoKey) as! NSValue).cgRectValue.size
        let contentInsets = UIEdgeInsets(top: 0.0, left: 0.0, bottom: kbSize.height, right: 0.0)
        
        // Добавляем отступ внизу UIScrollView, равный размеру клавиатуры
        self.scrollView?.contentInset = contentInsets
        scrollView?.scrollIndicatorInsets = contentInsets
    }
    
    //Когда клавиатура исчезает
    @objc func keyboardWillBeHidden(notification: Notification) {
        // Устанавливаем отступ внизу UIScrollView, равный 0
        let contentInsets = UIEdgeInsets.zero
        scrollView?.contentInset = contentInsets
        scrollView?.scrollIndicatorInsets = contentInsets
        
    }
    
}
