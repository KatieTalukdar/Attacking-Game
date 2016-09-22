//
//  Player.swift
//  AttackingGame
//
//  Created by Kashfa Talukdar on 25/01/2016.
//  Copyright © 2016 Kashfa Talukdar. All rights reserved.
//

import Foundation

class Player {
    private var _name :String
    private var _hp = 400
    private var _attackPower = 10
    
    
    
    var name : String {
        get {
            return _name
        }
    }
    
    var hp : Int{
        get {
            return _hp
        }
        set{
            
            }
           
            
        }
    


    
    
    var attackPower : Int{
        get {
            return _attackPower
        }
    }
    
    var isAlive : Bool{
        get{
            
       if _hp <= 0 {
        
        return false
       }else {
        return true
            }
        
        }
    }
    var initialhp :Int{
        
        get {
            var i  :Int = 0
        i = _hp
            return i
        }
        
        

    }
    
    var result :String {
        get{ return  "\(name)'s Attack successful"
        }
        set{
            
        }
    }
    
    
    init(name:String,hp:Int,attackPower:Int){
        self._name = name
        self._hp = hp
        self._attackPower = attackPower

        
        
    }
    
    func attemptAttack(attackPower:Int)->Bool{
        
          self._hp -= attackPower
            
                   
        return true
        
      

}
    

}
