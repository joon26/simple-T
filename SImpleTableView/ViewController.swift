//
//  ViewController.swift
//  SImpleTableView
//
//  Created by L703 on 2018. 5. 2..
//  Copyright © 2018년 L703. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    @IBOutlet weak var myTableView: UITableView!
    var animals = ["오랑우탄","도웅화초","개미핡기","거들테일","아르마딜로"]
    var country = ["일본","타이완","중국","한국","아프리카"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myTableView.delegate = self
        myTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //메모리 재활용
        let identifer = "RE"
        let cell = myTableView.dequeueReusableCell(withIdentifier: identifer, for: indexPath)
        
        cell.textLabel?.text = animals[indexPath.row]
        cell.detailTextLabel?.text = country[indexPath.row]
        
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

