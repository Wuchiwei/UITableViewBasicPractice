//
//  ViewController.swift
//  UITableViewBasicPractice
//
//  Created by WU CHIH WEI on 2019/7/26.
//  Copyright © 2019 WU CHIH WEI. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        
        tableView.delegate = self
        
        let headerXib = UINib(nibName: "NTUHeaderView", bundle: nil)
        
        tableView.register(headerXib, forHeaderFooterViewReuseIdentifier: "Header")
    }

    //MARK: - UITableViewDataSource
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "NTU", for: indexPath)
        
        guard let ntuCell = cell as? NTUTableViewCell else { return cell }
        
        ntuCell.ntuLabel.text = "Section \(indexPath.section) Row \(indexPath.row)"
        
        return ntuCell
    }

    //MARK: - UITableViewDelegate
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 100
    }
}

