//
//  GameViewController.swift
//  finalProject
//
//  Created by Guest User on 12/4/24.
//

import Foundation
import UIKit

class GameViewController: UIViewController {
    
    //player variables
    var currentCoins : Int = 0
    
    //achievement variables
    var totalCoins: Int = 0
    var totalCustomersServed: Int = 0
    
    //timers
    
    //game functionality
    var fruitsSelected: Int = 0; //increment to determine if one or two fruits were selected
    //player cannot select fruit or toppings if base isn't selected.
    //player cannot select toppings if fruit isn't selected
    var baseSelected: Bool = false
    var twoFruitsSelected: Bool = false
    var toppingSelected: Bool = false
    
    override func viewDidLoad() {
        print("loaded game")
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //reset variables
        resetGame()
    }
    
    //game buttons
    
    //smoothie bases
    @IBAction func addMangoBase(_ sender: Any) {
        if(!baseSelected){
            print("mangoBase")
            baseSelected = true;
        }
    }
    
    @IBAction func addStrawberryBase(_ sender: Any) {
        if(!baseSelected){
            print("strawberryBase")
            baseSelected = true;
        }
    }
    
    @IBAction func addKiwiBase(_ sender: Any) {
        if(!baseSelected){
            print("kiwiBase")
            baseSelected = true;
        }
    }
    
    //fruits
    @IBAction func addStrawberry(_ sender: Any) {
        if(baseSelected && !twoFruitsSelected){
            print("strawberry")
            fruitsSelected += 1
            if(fruitsSelected == 2){
                twoFruitsSelected = true
                fruitsSelected = 0
                print("done with fruit")
            }
        }
        else {
            print("select a base first")
        }
    }
    
    @IBAction func addBanana(_ sender: Any) {
        if(baseSelected && !twoFruitsSelected){
            print("banana")
            fruitsSelected += 1
            if(fruitsSelected == 2){
                twoFruitsSelected = true
                fruitsSelected = 0
                print("done with fruit")
            }
        }
        else {
            print("select a base first")
        }
    }
    
    @IBAction func addGrape(_ sender: Any) {
        if(baseSelected && !twoFruitsSelected){
            print("grape")
            fruitsSelected += 1
            if(fruitsSelected == 2){
                twoFruitsSelected = true
                fruitsSelected = 0
                print("done with fruit")
            }
        }
    }
    
    @IBAction func addBlueberry(_ sender: Any) {
        if(baseSelected && !twoFruitsSelected){
            print("blueberry")
            fruitsSelected += 1
            if(fruitsSelected == 2){
                twoFruitsSelected = true
                fruitsSelected = 0
                print("done with fruit")
            }
        }
        else {
            print("select a base first")
        }
    }
    
    //toppings
    
    func resetGame(){
        fruitsSelected = 0
        baseSelected = false
        twoFruitsSelected = false
        toppingSelected = false
    }
}
