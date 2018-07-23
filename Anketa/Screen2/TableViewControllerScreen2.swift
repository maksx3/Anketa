//
//  TableViewControllerScreen2.swift
//  Anketa
//
//  Created by maksim on 23/07/2018.
//  Copyright © 2018 maksim. All rights reserved.
//

import UIKit

class TableViewControllerScreen2: UITableViewController {
    var DataFromScreen1 = [AnswersOBJ]
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Danik rabotaj"
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = String(DataFromScreen1[0].question1_1)
        return cell
    }
//    var PreviosIndexSectionOne = IndexPath(row: 2, section: 0)
//    var PreviosIndexSectionTwo = IndexPath(row: 2, section: 1)
//    var PreviosIndex = IndexPath(row: 1, section: 1)
    
    override public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        var AnswersOBJ = answersOBJ()
//        if (tableView.cellForRow(at: indexPath)?.accessoryType != UITableViewCellAccessoryType.checkmark){
//            tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCellAccessoryType.checkmark
//            PreviosIndex = indexPath
//            if (PreviosIndex.section == PreviosIndexSectionOne.section) {
//                tableView.cellForRow(at: PreviosIndexSectionOne)?.accessoryType = UITableViewCellAccessoryType.none
//                PreviosIndexSectionOne.row = indexPath.row
//                tableView.deselectRow(at: indexPath, animated: true)
//                if (PreviosIndexSectionOne.row == 0){
//                    AnswersOBJ.question1_1 = true
//                } else {AnswersOBJ.question1_1 = false}
//                print(AnswersOBJ.question1_1)
//            }
//
//            else  if (PreviosIndex.section == PreviosIndexSectionTwo.section){
//                AnswersOBJ.question1_2 = true
//                tableView.cellForRow(at: PreviosIndexSectionTwo)?.accessoryType = UITableViewCellAccessoryType.none
//                PreviosIndexSectionTwo.row = indexPath.row
//                tableView.deselectRow(at: indexPath, animated: true)
//                if (PreviosIndexSectionTwo.row == 0){
//                    AnswersOBJ.question1_2 = true
//                } else {AnswersOBJ.question1_2 = false}
//                print(AnswersOBJ.question1_2)
//            }
//            else {print("errro")}
//        }
    }
    

}
