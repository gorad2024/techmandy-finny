//
//  ViewController.swift
//  finny
//
//  Created by Gorthi, Aditya Santosh Kumar on 10/6/16.
//  Copyright © 2016 techmandy. All rights reserved.
//

import UIKit

class AddTransactionViewController: UIViewController {

    @IBOutlet var transactionDate: UITextField!
    @IBOutlet var transactionAmount: UITextField!
    @IBOutlet var transactionCategory: UITextField!
    @IBOutlet var transactionNotes: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func constructTransactionData() -> TransactionModel {
        let transactionData: TransactionModel = TransactionModel()
        
//        let dateHelperText = "Date entered is - "
//        let amountHelperText = " Amount entered is - "
//        let categoryHelperText = " Category entered is - "
//        let notesHelperText = " Notes entered is - "
        
//        var finalText:String = ""
        
//        finalText += dateHelperText + transactionDate.text!
//        finalText += amountHelperText + transactionAmount.text!
//        finalText += categoryHelperText + transactionCategory.text!
//        finalText += notesHelperText + transactionNotes.text!
        transactionData.transactionDate = transactionDate.text
        transactionData.transactionAmount = transactionAmount.text
        transactionData.transactionCategory = transactionCategory.text
        transactionData.transactionNotes = transactionNotes.text
        
        return transactionData
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "showTransactionDetail") {
            (segue.destinationViewController as! TransactionDetailViewController).dataFromAddTransaction = constructTransactionData()
        }
    }

}

