//
//  testView.swift
//  Battleship
//
//  Created by Kevin Yan on 11/15/16.
//  Copyright ©                                                                                                     2016 Kevin Yan. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    
    //var player1Model = BattleshipModel();
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    //appDelegate.player2Model
    /*
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        print("unwindtoopponentscreen")
        player1Model = appDelegate.model
    }
 */
     
    
    
    
    @IBOutlet var collectionOutlet: [UIButton]!
    
    @IBAction func cellClicked(_ sender: UIButton) {
        
        for cell in collectionOutlet{
            cell.isEnabled = false;
        }
        appDelegate.player2Model.hitCell(cellIndex: sender.tag)
        //print(appDelegate.player2Model.checkAllSunk())
        if appDelegate.player2Model.checkAllSunk() {
            print("player 1 wins")
            youWin()
        }
        
        loadViewSetup()
        
        //self.performSegue(withIdentifier: "goToPlayer2", sender: self)
        
        
        
        //let buttonName = buttonNames[index]
        
        //player1Model.cellHit(index)

        
      
        let delayInSeconds = 1.0
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + delayInSeconds) {
            for cell in self.collectionOutlet{
                cell.isEnabled = true;
            }
            self.performSegue(withIdentifier: "goToPlayer2", sender: self)
        }

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadViewSetup()
    }
    
    func loadViewSetup() {
        
        /*
        //initialize tags
        for i in 0...99{
           collectionOutlet[i].tag = i
        }
        */
        for i in 0...119{
            //let state = player1Model.cellArray[i]
            let state = appDelegate.player2Model.cellArray[i]
            //print("i = ", i, state)
            
            for cell in self.collectionOutlet{
                
                if cell.tag == i {
                    cell.titleLabel!.font = UIFont(name: "HelveticaNeue-Thin", size: 8)
                    //print(cell.tag,i)
                    
                    switch state{
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
    
    
    func youWin(){
        let alert=UIAlertController(title: "Player 1 Win", message: "Player1 won!", preferredStyle: UIAlertControllerStyle.alert);
        //show it
        
        //no event handler (just close dialog box)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.cancel, handler: nil));
        
        show(alert, sender: self);
    }
    
    
    //passing information thru segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    }
    
    
}
        
