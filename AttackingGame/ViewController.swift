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
        winningLabel.isHidden = false
        restart.isHidden = false
       attack1Btn.isHidden = true
        attack2Btn.isHidden = true
        
    }
    
    
    @IBAction func attck1Btn(_ sender: UIButton) {
      
       
           
        
        if soldier.hp > soldier.attackPower
        { orc.attemptAttack(soldier.attackPower)
        
        
        textLabel.text = "\(soldier.result)       Orc's new HP:\(orc.hp)"
     
            
            if orc.isAlive == false {
                gameEnd()
                winningLabel.text = "\(soldier.name) Won!"
                orcImg.isHidden = true
            }
      }
    
  
       //NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector:"HideBtn(1)", userInfo:nil, repeats:true)
    }
    
    func HideBtn(_ Btn: Int)
    {
        
    }

    @IBAction func attack2Btn(_ sender: AnyObject) {
        
        
        
        
            if orc.hp > orc.attackPower {
        soldier.attemptAttack(orc.attackPower)
            
        textLabel.text = "\(orc.result)         Soldier's new HP:\(soldier.hp)"
                
            
            if soldier.isAlive == false  {
                gameEnd()
                winningLabel.text = "\(orc.name) Won!"
                soldierImg.isHidden = true

            
                }
            
       // NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: "attck1Btn:UIButton", userInfo: nil, repeats:true)
        
        }
    
    
        }
    
   

@IBAction func whenRestartPressed(_ sender: AnyObject) {
    restart.isHidden = true
    orcImg.isHidden = false
    soldierImg.isHidden = false
    attack1Btn.isHidden = false
    attack2Btn.isHidden = false
    winningLabel.isHidden = true
    textLabel.text = ""
    
    SetPlayers()

    
   
}}
