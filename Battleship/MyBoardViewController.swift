//
//  MyBoardViewController.swift
//  Battleship
//
//  Created by Kevin Yan on 11/19/16.
//  Copyright © 2016 Kevin Yan. All rights reserved.
//

import UIKit

class MyBoardViewController: UIViewController{
 
    /*
     @IBAction func unwindToMyBoard(segue: UIStoryboardSegue) {
     //  let viewController = segue.source as? ViewController
     print("unwindtomyboard")
     }
     */
    
    
    @IBOutlet var collectionOutlet: [UIButton]!
    
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    
    override func viewDidLoad(){
        super.viewDidLoad()
        /*
        if self.restorationIdentifier == "player1MyBoard"{
            loadViewSetup(model: appDelegate.player1Model)
            print("load player1 model")
        }
        else {
            loadViewSetup(model: appDelegate.player2Model)
            print("load player2 model")
        }
         */
        
        loadViewSetup(model: appDelegate.player1Model)
        //print("load player1 model")
        
    }
    
    func loadViewSetup(model: BattleshipModel) {

        
        
        /*
         //initialize tags
         for i in 0...99{
         collectionOutlet[i].tag = i
         }
         */
        
        
        for i in 0...119{
            //let state = player1Model.cellArray[i]
            let state = model.cellArray[i]
            //print("i = ", i, state)
            
            for cell in self.collectionOutlet{
                
                if cell.tag == i {
                    cell.titleLabel!.font = UIFont(name: "HelveticaNeue-Thin", size: 8)
                    //print(cell.tag,i)
                    
                    switch state{
                    case BattleshipModel.cellStatus.empty where model.allShipIndex.contains(i) :
                        cell.backgroundColor = UIColor.orange
                        //print(i)
                    case BattleshipModel.cellStatus.empty:
                        cell.backgroundColor = UIColor(red:0.09, green:0.47, blue:0.89, alpha:1.0)
                    //cell.setTitle("EMPTY", for: .normal)
                    case BattleshipModel.cellStatus.hit:
                        cell.setTitle("HIT", for: .normal)
                        cell.backgroundColor = UIColor.red
                    case BattleshipModel.cellStatus.miss:
                        cell.setTitle("MISS", for: .normal)
                        cell.backgroundColor = UIColor(red:0.60, green:0.60, blue:0.60, alpha:1.0)
                    case BattleshipModel.cellStatus.sunk:
                        cell.setTitleColor(UIColor.red, for: .normal)
                        cell.setTitle("SUNK", for: .normal)
                        cell.backgroundColor = UIColor.black
                    default:
                        print("did not match any states")
                    }
                }
            }
        }//end of outer for-loop
        
    
    } //viewdidload
    

    
}
