//
//  Soldier.swift
//  AttackingGame
//
//  Created by Kashfa Talukdar on 25/01/2016.
//  Copyright © 2016 Kashfa Talukdar. All rights reserved.
//

import Foundation

class Soldier:Player{
    
    private var _weapons = ["Sheild","Sword","Arrow"]
    var weapon :[String]{
        get{
            return _weapons
            
        }
    }
    
    
    convenience  init (Sname:String, Shp:Int, SattackPower:Int){
        self.init(name: Sname,hp: Shp,attackPower: SattackPower)
           
    }
    
    }



    