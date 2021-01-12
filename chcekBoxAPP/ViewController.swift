//
//  ViewController.swift
//  chcekBoxAPP
//
//  Created by 井関竜太郎 on 2021/01/12.
//

import UIKit
import YSCheckBox

class ViewController: UIViewController,YSCheckBoxViewControllerDelegate {
    
    let checkBox = YSCheckBoxViewController(labels: ["s","ss","sss","ss","sss","ss","sss","ss","sss","ss","sss","ss","sss","ss","sss","ss","sss","ss","sss"])
    
    let numbers = ["1","2","3","4","5","6","7"]

    @IBOutlet weak var container: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checkBox.delegate = self
        checkBox.font = UIFont.systemFont(ofSize: 18)
        checkBox.labelColor = UIColor.black
        checkBox.labelMargin = 0
        checkBox.lineWidth = 1
        checkBox.checkBoxSelectedFillSize = 1
        checkBox.checkBoxMargin = 6
        checkBox.checkBoxCorner = 7
        checkBox.checkBoxStroke = .lightGray
        //チェックの白い線
        checkBox.checkBoxCheckStroke = .black
        //チェックした後の背景
        checkBox.checkBoxSelectedFill = UIColor.white
        //checkする前の背景
        checkBox.checkBoxBGFill = UIColor.white
        
        addChild(checkBox)
        checkBox.view.frame = container.bounds
        container.addSubview(checkBox.view)
        checkBox.didMove(toParent: self)

    }
    
    func didYSCeckBoxSelect(checks: [Bool]) {
        print(checks)
       
    }


}

