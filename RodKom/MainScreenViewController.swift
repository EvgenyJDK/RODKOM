//
//  MainScreenViewController.swift
//  RodKom
//
//  Created by Administrator on 08.02.17.
//  Copyright © 2017 Administrator. All rights reserved.
//

import Foundation
import UIKit

class MainScreenViewController : UIViewController, UITextFieldDelegate {
    
    
    
    @IBOutlet weak var libraryBtn: UIButton!
    
    @IBOutlet weak var POIBtn: UIButton!
    
    
    @IBOutlet weak var logoView: UIView!
    
    override func viewDidLoad() {
        
      
//        self.navigationController?.navigationBar.barTintColor = UIColor(red: 60.0/255.0, green: 64.0/255.0, blue: 67.0/255.0, alpha: 1.0)
//        self.navigationController?.navigationBar.barTintColor = UIColor(red: 50.0/255.0, green: 5.0/255.0, blue: 0.0/255.0, alpha: 1.0)
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 170.0/255.0, green: 107.0/255.0, blue: 76.0/255.0, alpha: 1.0)
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)]
        
//        self.logoView
    }
    
    //class MainScreenViewController: UIViewController, UITextFieldDelegate {
    //
    //    @IBOutlet weak var expensesBtn: UIButton!
    //    @IBOutlet weak var incomeBtn: UIButton!
    //    @IBOutlet weak var paymentHistory: UIButton!
    //    @IBOutlet weak var saldo: UILabel!
    //    @IBOutlet weak var currencyLabel: UILabel!
    //
    //    private var viewModel = MainScreenViewModel()
    //    private let bag = DisposeBag()
    //
    //    override func viewDidLoad() {
    //
    //        super.viewDidLoad()
    //
    //        incomeBtn.rx_tap.subscribeNext { _ in
    //            self.viewModel.createCategoryViewModel(self.incomeBtn.titleLabel!.text!)
    //            }.addDisposableTo(bag)
    //
    //        expensesBtn.rx_tap.subscribeNext { _ in
    //            self.viewModel.createCategoryViewModel(self.expensesBtn.titleLabel!.text!)
    //            }.addDisposableTo(bag)
    //
    //        viewModel.categoryViewModel.asObservable()
    //            .filter { $0 != nil }.map { $0! }.subscribeNext { _ in
    //                self.performSegueWithIdentifier("showIncomesOrExpenses", sender: self)
    //            }.addDisposableTo(bag)
    //
    //        viewModel.currency.asObservable()
    //            .subscribeNext { (currency) in
    //                self.currencyLabel.text = currency
    //            }.addDisposableTo(bag)
    //
    //        viewModel.saldo.asObservable()
    //            .subscribeNext { saldo in
    //                self.saldo.text = String(format: "%.2f", saldo)
    //            }.addDisposableTo(bag)
    //
    //    }
    //
    //
    //    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    //
    //        if  segue.identifier == "showIncomesOrExpenses" {
    //            let nextVC  = segue.destinationViewController as! IncomesCollectionViewController
    //            nextVC.viewModel = viewModel.categoryViewModel.value
    //        }
    //    }
}