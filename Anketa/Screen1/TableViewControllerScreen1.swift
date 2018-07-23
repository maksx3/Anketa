//
//  TableViewControllerScreen1.swift
//  Anketa
//
//  Created by maksim on 19/07/2018.
//  Copyright © 2018 maksim. All rights reserved.
//

import UIKit
let qustins = ["Присвоен ли вам статус клиента в стране ЕС или ЕС эконом зоны?", "Включены ли Вы в список дерателей эмитента?"]
let answers = ["Да","Нет"]
var AnswersOBJ = answersOBJ()
class answersOBJ: NSObject{
    var question1_1 : Bool = false
    var question1_2 : Bool = false
    override init()  {
        
    }
    init(question1_1 : Bool,question1_2 : Bool) {
        self.question1_1 = question1_1
        self.question1_2 = question1_2
    }
}


class TableViewControllerScreen1: UITableViewController {
    
    @IBOutlet weak var ErrorMesage: UILabel!
  
    
    // MARK: - Cancel button
    @IBAction func CancelButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "MainScreen", sender: self)
    }
    
    
  // MARK: - Performe screen 2
    @IBAction func CreenTwoPerforme(_ sender: UIButton) {
        if (PreviosIndexSectionOne.row < 2 && PreviosIndexSectionTwo.row < 2 ){
        performSegue(withIdentifier: "GoToScreen2", sender: self)// screen 2
            func prepare(for segue: UIStoryboardSegue, sender: Any?) {//sccreen 2
                let secodController = segue.destination as! TableViewControllerScreen2
                secodController.DataFromScreen1 = [AnswersOBJ]
            }

        } else{ErrorMesage.text = "Заполните оба поля"
            ErrorMesage.textColor = UIColor.red
        }
        
    }
    
    
    // MARK: - Number of sections
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    
    // MARK: - Number of cells
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    
    // MARK: - Title of header
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return qustins[section]
    }
    
    
    // MARK: - Add content to cells
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = answers[indexPath.row]
        return cell
    }
    var PreviosIndexSectionOne = IndexPath(row: 2, section: 0)
    var PreviosIndexSectionTwo = IndexPath(row: 2, section: 1)
    var PreviosIndex = IndexPath(row: 1, section: 1)
    
    
    // MARK: - Add check marks
    
    override public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if(tableView.cellForRow(at: indexPath)?.accessoryType == UITableViewCellAccessoryType.checkmark){
            tableView.deselectRow(at: indexPath, animated: true)
            
        }
       else if (tableView.cellForRow(at: indexPath)?.accessoryType != UITableViewCellAccessoryType.checkmark){
        tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCellAccessoryType.checkmark
        PreviosIndex = indexPath
            
            if (PreviosIndex.section == PreviosIndexSectionOne.section) {
                tableView.cellForRow(at: PreviosIndexSectionOne)?.accessoryType = UITableViewCellAccessoryType.none
                PreviosIndexSectionOne.row = indexPath.row
                tableView.deselectRow(at: indexPath, animated: true)
                
                    if (PreviosIndexSectionOne.row == 0){
                        AnswersOBJ.question1_1 = true
                    } else {AnswersOBJ.question1_1 = false}
                
                print(AnswersOBJ.question1_1)
            }
                
            else  if (PreviosIndex.section == PreviosIndexSectionTwo.section){
                AnswersOBJ.question1_2 = true
                tableView.cellForRow(at: PreviosIndexSectionTwo)?.accessoryType = UITableViewCellAccessoryType.none
                PreviosIndexSectionTwo.row = indexPath.row
                tableView.deselectRow(at: indexPath, animated: true)
                
                    if (PreviosIndexSectionTwo.row == 0){
                        AnswersOBJ.question1_2 = true
                    } else {AnswersOBJ.question1_2 = false}
                
                print(AnswersOBJ.question1_2)
            }
            else {print("errro")}
      }
        
    }
    
}
