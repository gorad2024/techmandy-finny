//
//  TransactionDetailViewController.swift
//  finny
//
//  Created by Gorthi, Aditya Santosh Kumar on 10/6/16.
//  Copyright © 2016 techmandy. All rights reserved.
//

import UIKit

class TransactionDetailViewController: UIViewController {
    
    
    @IBOutlet var addedDate: UILabel!
    @IBOutlet var addedAmount: UILabel!
    @IBOutlet var addedCategory: UILabel!
    @IBOutlet var addedNotes: UILabel!
    
//    @IBOutlet var transactionDetails: UILabel!
    var dataFromAddTransaction:TransactionModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let tempDate = dataFromAddTransaction?.transactionDate {
            addedDate.text = tempDate
        } else {
            addedDate.text = "Date not entered"
        }
        
        if let tempAmount = dataFromAddTransaction?.transactionAmount {
            addedAmount.text = tempAmount
        } else {
            addedAmount.text = "Amount not entered"
        }
        
        if let tempCategory = dataFromAddTransaction?.transactionCategory {
            addedCategory.text = tempCategory
        } else {
            addedCategory.text = "Category not entered"
        }
        
        if let tempNotes = dataFromAddTransaction?.transactionNotes {
            addedNotes.text = tempNotes
        } else {
            addedNotes.text = "Notes not entered"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    @IBAction func onDoneClicked(sender: AnyObject) {
//        let dateHelperText = "Date entered is - "
//        let amountHelperText = " Amount entered is - "
//        let categoryHelperText = " Category entered is - "
//        let notesHelperText = " Notes entered is - "
//        
//        var finalText:String = ""
//        
//        finalText += dateHelperText + transactionDate.text!
//        finalText += amountHelperText + transactionAmount.text!
//        finalText += categoryHelperText + transactionCategory.text!
//        finalText += notesHelperText + transactionNotes.text!
//        
//        transactionSummary.text = finalText
//    }
    
}
