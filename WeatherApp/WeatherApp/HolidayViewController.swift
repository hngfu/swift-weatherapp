//
//  HolidayViewController.swift
//  WeatherApp
//
//  Created by 조재흥 on 19. 3. 28..
//  Copyright © 2019 hngfu. All rights reserved.
//

import UIKit

class HolidayViewController: UIViewController {
    
    //MARK: - Properties
    //MARK: IBOutlet
    
    @IBOutlet weak var holidayTableView: UITableView!
    
    //MARK: Private
    
    private var holidays = Holidays()
    
    private let holidayCell = "holidayCell"
    private let defaultCell = "defaultCell"    
    
    //MARK: - Methods
    //MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
}

extension HolidayViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return holidays.count()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: holidayCell, for: indexPath)
        
        guard let holiday = self.holidays[indexPath.row],
              let holidayTableCell = cell as? HolidayTableViewCell else { return cell }
        
        holidayTableCell.show(with: holiday)
        
        return holidayTableCell
    }
}
