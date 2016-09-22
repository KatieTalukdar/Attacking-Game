//
//  Orc.swift
//  AttackingGame
//
//  Created by Kashfa Talukdar on 25/01/2016.
//  Copyright © 2016 Kashfa Talukdar. All rights reserved.
//

import Foundation

class Orc : Player{
    private var _loot = ["Strangled Hen","Rusty Dagger"]
    var loot :[String]{
        get{
            return _loot
        }
    }
 
    convenience init (Oname:String,Ohp:Int, OattackPower:Int){
        self.init(name:Oname,hp:Ohp,attackPower:OattackPower)
        _loot=loot
    }
   
        }
    
