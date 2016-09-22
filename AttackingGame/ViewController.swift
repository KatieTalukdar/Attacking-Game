//
//  ViewController.swift
//  AttackingGame
//
//  Created by Kashfa Talukdar on 25/01/2016.
//  Copyright © 2016 Kashfa Talukdar. All rights reserved.
//

import UIKit
class ViewController: UIViewController{
    
    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var winningLabel: UILabel!
    
    @IBOutlet weak var orcImg: UIImageView!
    
    @IBOutlet weak var restart: UIButton!
    @IBOutlet weak var attack2Btn: UIButton!
    @IBOutlet weak var attack1Btn: UIButton!
    @IBOutlet weak var soldierImg: UIImageView!
    
   
    var soldier: Soldier!
    var orc: Orc!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        SetPlayers()
        
        
        
    }

    
    func SetPlayers()
    {
        soldier = Soldier(Sname: "Soldier", Shp: 150, SattackPower: 20)
        orc = Orc(Oname: "Orc", Ohp: 200, OattackPower:15 )
    }


    func gameEnd(){
        winningLabel.hidden = false
        restart.hidden = false
       attack1Btn.hidden = true
        attack2Btn.hidden = true
        
    }
    
    
    @IBAction func attck1Btn(sender: UIButton) {
      
       
           
        
        if soldier.hp > soldier.attackPower
        { orc.attemptAttack(soldier.attackPower)
        
        
        textLabel.text = "\(soldier.result)       Orc's new HP:\(orc.hp)"
     
            
            if orc.isAlive == false {
                gameEnd()
                winningLabel.text = "\(soldier.name) Won!"
                orcImg.hidden = true
            }
      }
    
  
       //NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector:"HideBtn(1)", userInfo:nil, repeats:true)
    }
    
    func HideBtn(Btn: Int)
    {
        
    }

    @IBAction func attack2Btn(sender: AnyObject) {
        
        
        
        
            if orc.hp > orc.attackPower {
        soldier.attemptAttack(orc.attackPower)
            
        textLabel.text = "\(orc.result)         Soldier's new HP:\(soldier.hp)"
                
            
            if soldier.isAlive == false  {
                gameEnd()
                winningLabel.text = "\(orc.name) Won!"
                soldierImg.hidden = true

            
                }
            
       // NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: "attck1Btn:UIButton", userInfo: nil, repeats:true)
        
        }
    
    
        }
    
   

@IBAction func whenRestartPressed(sender: AnyObject) {
    restart.hidden = true
    orcImg.hidden = false
    soldierImg.hidden = false
    attack1Btn.hidden = false
    attack2Btn.hidden = false
    winningLabel.hidden = true
    textLabel.text = ""
    
    SetPlayers()

    
   
}}
