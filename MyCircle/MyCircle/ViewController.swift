//
//  ViewController.swift
//  MyCircle
//
//  Created by pxl on 2017/3/23.
//  Copyright © 2017年 pxl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    fileprivate lazy var tableView: UITableView = {[unowned self] in
        
        let myTableView:UITableView = UITableView(frame: self.view.bounds)
        myTableView.delegate = self
        myTableView.dataSource = self
//        myTableView.contentInset = UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0)
        //        myTableView.register("", forCellReuseIdentifier: "lin")
        myTableView.register(UINib(nibName: "CircleViewCell", bundle: nil), forCellReuseIdentifier: "CircleViewCell")
        
        return myTableView;
        }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(tableView)
    }
    
    
}


extension ViewController: UITableViewDelegate, UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let circleCell = tableView.dequeueReusableCell(withIdentifier: "CircleViewCell", for: indexPath) as! CircleViewCell

        return circleCell;
    }
}
