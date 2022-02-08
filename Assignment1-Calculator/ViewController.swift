//
//  ViewController.swift
//  Assignment1-Calculator
//
//  Created by Parth Antala on 2022-02-07.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var history: UITextView!
    @IBOutlet weak var tview: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var calObject = calculation.init()
    var flag = false
    
    @IBAction func buttons(_ sender: UIButton) {
        if(sender.tag == 1){
            tview.text! += "1"
            calObject.push(s: "1")
        }
        else if(sender.tag == 2){
            tview.text! += "2"
            calObject.push(s: "2")
        }
        else if(sender.tag == 3){
            tview.text! += "3"
            calObject.push(s: "3")
        }
        else if(sender.tag == 4){
            tview.text! += "4"
            calObject.push(s: "4")
        }
        else if(sender.tag == 5){
            tview.text! += "5"
            calObject.push(s: "5")
        }
        else if(sender.tag == 6){
            tview.text! += "6"
            calObject.push(s: "6")
        }
        else if(sender.tag == 7){
            tview.text! += "7"
            calObject.push(s: "7")
        }
        else if(sender.tag == 8){
            tview.text! += "8"
            calObject.push(s: "8")
        }
        else if(sender.tag == 9){
            tview.text! += "9"
            calObject.push(s: "9")
        }
        else if(sender.tag == 0){
            tview.text! += "0"
            calObject.push(s: "0")
        }
        else if(sender.tag == 10){
            tview.text! += "+"
            calObject.push(s: "+")
        }
        else if(sender.tag == 11){
            tview.text! += "-"
            calObject.push(s: "-")
        }
        else if(sender.tag == 12){
            tview.text! += "*"
            calObject.push(s: "*")
        }
        else if(sender.tag == 14){
            if calObject.checkValues(){
                let ans = calObject.ans()
                tview.text! += "=\(ans)"
                if flag{
                    history.text += tview.text! + "\n"
                }
            }
            else{
                tview.text! = "Please enter single digits"
            }
            
        }
        else if(sender.tag == 15){
            tview.text! += "/"
            calObject.push(s: "/")
        }
        else if(sender.tag == 99){
            if sender.currentTitle == "Advance - With History" {
            sender.setTitle("Standard - No History", for: .normal); history.isHidden = false
            flag = true
            } else{
            sender.setTitle("Advance - With History", for: .normal); history.isHidden = true
            history.text = ""
            flag = false
            }
        }
        else{
            calObject.clean()
            tview.text = ""
        }
    }
    }
    




