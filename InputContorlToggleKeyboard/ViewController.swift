//
//  ViewController.swift
//  InputContorlToggleKeyboard
//
//  Created by sycf_ios on 2017/3/18.
//  Copyright © 2017年 shibiao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let kScreenWidth = UIScreen.main.bounds.size.width
    let toolBar: UIToolbar = {
        //创建ToolBar
        let tmpToolBar = UIToolbar(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: 70))
        tmpToolBar.backgroundColor = UIColor.gray
        return tmpToolBar
    }()
    var textView: UITextView!
    
    @IBOutlet weak var inputTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        //创建UITextView
        textView = UITextView(frame: CGRect(x: 0, y: 5, width: kScreenWidth/4*3, height: 60))
        textView.backgroundColor = UIColor.lightGray
        let inputItem = UIBarButtonItem(customView: textView)
        //创建发送按钮
        let sendBtn = UIButton(frame: CGRect(x: 0, y: 5, width: kScreenWidth/4-40, height: 50))
        sendBtn.contentMode = .center
        sendBtn.setTitle("发送", for: .normal)
        sendBtn.setTitleColor(UIColor.blue, for: .normal)
        sendBtn.addTarget(self, action: #selector(handleSend(event:)), for: .touchUpInside)
        let sendItem = UIBarButtonItem(customView: sendBtn)
        //ToolBar添加textView和发送按钮
        toolBar.items = [inputItem,sendItem]
        //赋值给UITextField的inputAccessoryView
        inputTextField.inputAccessoryView = toolBar
    }
    func handleSend(event: UIButton) -> () {
        print(textView.text)
        view.endEditing(true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

